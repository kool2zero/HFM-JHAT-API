# JHAT Commands: Intercompany

[← Back to index](../README.md)

## Overview

Commands for HFM's intercompany transactions module, where entities record the individual transactions they have with intercompany partners so that the two sides can be matched before consolidation. The usual cycle is:

1. **Open the IC period** with its matching tolerances (`OpenICPeriod`).
2. **Load or create transactions** (`LoadICTransactions`, `CreateICTransaction`).
3. **Match** each entity's transactions against its partner's, automatically (`ICAutoMatchByID`, `ICAutoMatchByAccount`) or manually (`ProcessICTransaction` with `ManualMatch`). Differences within the period's tolerances still count as matched. Reason codes explain mismatches.
4. **Post** transactions to the application's data (`ProcessAllICTransactions` with `Post`). If the period's *Match/Validate Before Post* setting is on, only matched transactions, and mismatched transactions with a reason code, can be posted.
5. **Lock entities** so their transactions can't change, and **close the period** (`LockICEntity`, `CloseICPeriod`). With Match/Validate Before Post on, an entity can only be locked once all its matched transactions, and mismatched ones with a reason code, are posted. A closed period's transactions can still be viewed and reported on.

## Commands

These commands need an open application. Text values are matched ignoring case.

- **List numbers:** where a parameter takes a list number, use a list built with `AddItemToList` or `AddItemsToListFromMemberlist` (see [Extracts](07-extracts.md#lists)), or `All`. For entity and partner lists, JHAT uses the Entity or ICP list with that number, and falls back to the string list with that number if that list is empty.
- **Custom dimensions in POV strings:** in the POVs taken by `CreateICTransaction`, `ProcessICTransactions` and `EditICTransaction`, write custom dimensions with their **full dimension name** (e.g. `Flows#Increases`), not `C1#` or the short name. Only `AddICTransactionToList` accepts `C1#`, `C2#`, ….
- **Output files:** written in UTF-8, semicolon-separated, and overwritten if they exist.

**Commands on this page:**

- **Periods:** [OpenICPeriod](#openicperiod), [UpdateICPeriod](#updateicperiod), [CloseICPeriod](#closeicperiod), [ListICPeriods](#listicperiods)
- **Transactions:** [CreateICTransaction](#createictransaction), [EditICTransaction](#editictransaction), [GetICTransactions](#getictransactions), [FilterICTransactions](#filterictransactions), [DisplayICTransactions](#displayictransactions)
- **Processing transactions:** [ProcessAllICTransactions](#processallictransactions), [InitICTransactionList](#initictransactionlist), [AddICTransactionToList](#addictransactiontolist), [ProcessICTransaction](#processictransaction), [ProcessICTransactions](#processictransactions)
- **Matching:** [ICAutoMatchByID](#icautomatchbyid), [ICAutoMatchByAccount](#icautomatchbyaccount), [CreateAutoMatchByIDTemplate](#createautomatchbyidtemplate), [CreateAutoMatchByAccountTemplate](#createautomatchbyaccounttemplate)
- **Reason codes:** [CreateReasonCode](#createreasoncode), [DeleteReasonCode](#deletereasoncode), [DeleteAllReasonCodes](#deleteallreasoncodes), [ListReasonCodes](#listreasoncodes)
- **Locking and monitoring:** [LockICEntity](#lockicentity), [UnLockICEntity](#unlockicentity), [ListMonitorIntercompany](#listmonitorintercompany), [ListMonitorIntercompanySummary](#listmonitorintercompanysummary), [FilterMonitorIntercompany](#filtermonitorintercompany)

### Periods

#### OpenICPeriod

> [!NOTE]
> Opens an intercompany period and sets its matching tolerances.

**Input**

Pass 5 parameters, or all 8. Passing 6 or 7 makes the command fail.

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Scenario | |
| 2 | Year | |
| 3 | Period | |
| 4 | Match/Validate Before Post | `Yes`, `No` or `Restrict` |
| 5 | Account Tolerance | |
| 6 | Manual Tolerance | Optional (with 7 and 8) |
| 7 | Transaction ID Tolerance | Optional (with 6 and 8) |
| 8 | Transaction ID Percentage | Optional (with 6 and 7) |

**Example**

```text
OpenICPeriod("Actual","2023","Dec","Yes","10");
OpenICPeriod("Actual","2023","Dec","Yes","10","5","10","1");
```

#### UpdateICPeriod

> [!NOTE]
> Changes an intercompany period's settings. Parameters are as for `OpenICPeriod`. HFM's response status and error text are written to the log, but the command reports success either way.

**Example**

```text
UpdateICPeriod("Actual","2023","Dec","Restrict","10","5","10","1");
```

#### CloseICPeriod

> [!NOTE]
> Closes an intercompany period.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |

**Example**

```text
CloseICPeriod("Actual","2023","Dec");
```

#### ListICPeriods

> [!NOTE]
> Writes each intercompany period of a scenario and year to a file. Columns: `Period;Status;Trans id tolerance amount;Trans id tolerance percentage;Account Tolerance;Manual Tolerance;Match/Validate Before Post`. Status is Unopened, Opened or Closed.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Output File | ✓ | |

**Example**

```text
ListICPeriods("Actual","2023","C:\Output\icperiods.txt");
```

### Transactions

#### CreateICTransaction

> [!NOTE]
> Creates an intercompany transaction.

**Input**

All 12 parameters are required.

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | POV | POV string with Scenario, Year, Period, Entity, ICP, Account and custom dimensions (full names), e.g. `S#Actual.Y#2023.P#Dec.E#EntityA.I#EntityB.A#ICRec.Flows#Increases` |
| 2 | Transaction ID | |
| 3 | Transaction Sub ID | |
| 4 | Reference ID | |
| 5 | Transaction Date | `MM/dd/yyyy` (e.g. `12/31/2023`) |
| 6 | Transaction Currency | |
| 7 | Transaction Amount | |
| 8 | Entity Currency Amount | |
| 9 | Comment 1 | or `""` |
| 10 | Comment 2 | or `""` |
| 11 | Reason Code | or `""` |
| 12 | Conversion Rate | |

**Example**

```text
CreateICTransaction("S#Actual.Y#2023.P#Dec.E#EntityA.I#EntityB.A#ICRec","T001","S01","REF1","12/31/2023","USD","1000","1000","","","","1");
```

#### EditICTransaction

> [!NOTE]
> Changes fields on the intercompany transactions that match a POV, transaction ID and sub ID. The field names and new values come from two string lists (built with `AddItemToList`, dimension `""`). The first name goes with the first value, and so on.

> [!WARNING]
> Only one custom dimension can be changed per call. `TRANSACTION_AMOUNT` and `TRANSACTION_CURRENCY` overwrite each other, so change them in separate calls.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | POV | Scenario, Year, Period, and filters on Entity, ICP, Account and custom dimensions (full names). Entity, ICP, Account and custom values can list several members separated by commas. |
| 2 | Transaction ID | |
| 3 | Transaction Sub ID | |
| 4 | Field Names List | String list number of field names |
| 5 | Values List | String list number of the new values |

Field names: `TRANS_ID`, `TRANS_SUB_ID`, `REFERENCE_ID`, `TRANS_DATE` (value as `MM/dd/yyyy`), `ENTITY`, `ACCOUNT`, `ICP`, `TRANSACTION_AMOUNT`, `TRANSACTION_CURRENCY`, `ENTITY_CURRENCY_AMOUNT`, `COMMENT_1`, `COMMENT_2`, `CONVERSION_RATE`, `REASON_CODE`, or a custom dimension's name. Any other name fails with "Invalid update field name".

**Example**

```text
InitLists();
AddItemToList("1","","REFERENCE_ID");
AddItemToList("1","","COMMENT_1");
AddItemToList("2","","REF2");
AddItemToList("2","","Corrected");
EditICTransaction("S#Actual.Y#2023.P#Dec.E#EntityA.I#EntityB.A#ICRec","T001","S01","1","2");
```

#### GetICTransactions

> [!NOTE]
> Writes every intercompany transaction for a scenario, year and period to a file.

The columns are Status (`match:post`), Transaction ID, Transaction Sub ID, Entity, ICP(Partner), Account, Translated Amount, Entity Currency Amount, Translated EC amount, Reference ID, Match Code, Reason Code, Transaction Amount, Rate, then one column per custom dimension. Amounts are followed by their currency.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Output File | ✓ | |

**Example**

```text
GetICTransactions("Actual","2023","Dec","C:\Output\ictrans.txt");
```

#### FilterICTransactions

> [!NOTE]
> Writes the intercompany transactions matching the filters to a file, in the same format as `GetICTransactions`. Leave a filter as `""` to not filter on it.

> [!WARNING]
> Known bugs in this command:
>
> - **Dates:** the date filters are parsed as `mm/dd/yyyy`, where `mm` means *minutes*, so the month is ignored and the dates come out wrong.
> - **Display Partner Transactions:** this parameter overwrites Display Entity Transactions instead of setting its own option.

**Input**

All 25 parameters are required.

| # | Parameter | Comment |
| --- | --- | --- |
| 1–3 | Scenario, Year, Period | |
| 4 | Entities | Entities separated by `;` |
| 5 | ICPs | Partners separated by `;` |
| 6 | Entity Account | One account, or `""` |
| 7 | Partner Account | One account, or `""` |
| 8 | Transaction ID | |
| 9 | Transaction Sub ID | |
| 10 | Reference ID | |
| 11 | Amount From | |
| 12 | Amount To | |
| 13 | Reason Code | |
| 14 | Match Code | |
| 15 | Transaction Currency | |
| 16 | Start Date | See the bug above |
| 17 | End Date | See the bug above |
| 18 | Display Entity Transactions | `true` / `false` / `""` |
| 19 | Display Partner Transactions | See the bug above |
| 20 | Include Matched | `true` / `false` / `""` |
| 21 | Include Unmatched | `true` / `false` / `""` |
| 22 | Include Mismatched | `true` / `false` / `""` |
| 23 | Include Posted | `true` / `false` / `""` |
| 24 | Include Unposted | `true` / `false` / `""` |
| 25 | Output File | |

**Example**

```text
FilterICTransactions("Actual","2023","Dec","EntityA;EntityB","","","","","","","","","","","","","","","","true","true","true","true","true","C:\Output\ictrans.txt");
```

#### DisplayICTransactions

> [!NOTE]
> Writes every intercompany transaction for a scenario, year and period to a file (same format as `GetICTransactions`), with display options.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1–3 | Scenario, Year, Period | |
| 4 | Scale Factor | Number, or `""` |
| 5 | Decimal Override | Number, or `""` |
| 6 | Common Currency | Currency for translated amounts, or `""` for the application currency |
| 7 | Display Options | `Dim#LABEL`, `Dim#DESC` or `Dim#BOTH` entries joined with `.`. Only `E` and custom dimensions (full names) are read. The `E` setting also applies to the ICP and Account columns. |
| 8 | Output File | |

**Example**

```text
DisplayICTransactions("Actual","2023","Dec","","","","E#BOTH","C:\Output\ictrans.txt");
```

### Processing transactions

#### ProcessAllICTransactions

> [!NOTE]
> Posts, unposts, deletes or unmatches every intercompany transaction in a period, and waits for the task to finish.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Action | ✓ | `Post`, `UnPost`, `Delete` or `UnMatch`. Anything else fails. |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |

**Example**

```text
ProcessAllICTransactions("Post","Actual","2023","Dec");
```

#### InitICTransactionList

> [!NOTE]
> Empties the in-memory list of transactions used by `ProcessICTransaction`.

**Input**

None

**Example**

```text
InitICTransactionList();
```

#### AddICTransactionToList

> [!NOTE]
> Adds a transaction to the in-memory list used by `ProcessICTransaction`. The transaction is identified by entity, partner, account, custom members, transaction ID and sub ID.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| POV | ✓ | POV string with Entity, ICP, Account and custom dimensions. `C1#`, `C2#`, … are accepted. |
| Transaction ID | ✓ | |
| Transaction Sub ID | ✓ | |

**Example**

```text
AddICTransactionToList("S#Actual.Y#2023.P#Dec.E#EntityA.I#EntityB.A#ICRec.C1#Increases.C2#[None].C3#[None].C4#[None]","T001","S01");
```

#### ProcessICTransaction

> [!NOTE]
> Processes the transactions in the list built with `AddICTransactionToList`. JHAT looks them up among the first 5,000 transactions of the period. Unlike `ProcessAllICTransactions`, it doesn't wait for a running task.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Action | ✓ | `Post`, `UnPost`, `Delete`, `UnMatch` or `ManualMatch` |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |

**Example**

```text
InitICTransactionList();
AddICTransactionToList("S#Actual.Y#2023.P#Dec.E#EntityA.I#EntityB.A#ICRec.C1#[None].C2#[None].C3#[None].C4#[None]","T001","S01");
ProcessICTransaction("Post","Actual","2023","Dec");
```

#### ProcessICTransactions

> [!NOTE]
> Processes the transactions matching a filter, and waits for the task to finish.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Action | ✓ | `Post`, `UnPost`, `Delete`, `UnMatch` or `ManualMatch` |
| Filter | ✓ | `S#`, `Y#`, `P#` (required), plus optional `E#` and `I#` (members separated by commas), `A#`, and custom dimensions by full name |
| Transaction ID | ✓ | or `""` |
| Transaction Sub ID | ✓ | or `""` |

**Example**

```text
ProcessICTransactions("Post","S#Actual.Y#2023.P#Dec.E#EntityA,EntityB","","");
```

### Matching

#### ICAutoMatchByID

> [!NOTE]
> Runs Auto Match by transaction ID or reference ID and waits for the task to finish.

**Input**

All 10 parameters are required. Parameters 7 and 8 are ignored.

| # | Parameter | Comment |
| --- | --- | --- |
| 1–3 | Scenario, Year, Period | |
| 4 | Entity List | List number, or `All` |
| 5 | Partner List | List number, or `All` |
| 6 | Transaction Currency | Currency, or `no` for none |
| 7–8 | (unused) | |
| 9 | ID Type | `Transaction` for transaction IDs. Anything else matches on reference IDs. |
| 10 | IDs | IDs separated by commas, or `All` |

**Example**

```text
ICAutoMatchByID("Actual","2023","Dec","All","All","no","no","no","Transaction","All");
```

#### ICAutoMatchByAccount

> [!NOTE]
> Runs Auto Match by account and waits for the task to finish.

**Input**

All 10 parameters are required. Parameters 7 and 8 are ignored.

| # | Parameter | Comment |
| --- | --- | --- |
| 1–3 | Scenario, Year, Period | |
| 4 | Entity List | List number, or `All` |
| 5 | Partner List | List number, or `All` |
| 6 | Transaction Currency | Currency, or `no` for none |
| 7–8 | (unused) | |
| 9 | Accounts | Accounts separated by commas, or a string list number |
| 10 | Matching Accounts | Accounts separated by commas, or a string list number |

**Example**

```text
ICAutoMatchByAccount("Actual","2023","Dec","All","All","no","no","no","ICRec","ICPay");
```

#### CreateAutoMatchByIDTemplate

> [!NOTE]
> Saves an Auto Match by ID template to Document Manager.

> [!WARNING]
> The ICP value gets an `E#` prefix (not `I#`) unless it already starts with `E#` or `E{`. This looks like a bug, so check the saved template's partner filter.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Name | Template name |
| 2 | Description | |
| 3 | Security Class | or `""` for `[Default]` |
| 4 | Private | `true` / `false` |
| 5 | Overwrite | `true` / `false` |
| 6 | Folder | Document Manager folder, or `\` for the root |
| 7 | POV | POV string for the template |
| 8 | Entity | Entity or `{list}` (`E#` is added if missing) |
| 9 | ICP | Partner (see warning) |
| 10 | Currency | |
| 11 | Match By | `TransactionID` or `ReferenceID` |
| 12 | IDs | |

**Example**

```text
CreateAutoMatchByIDTemplate("MatchTID","Match by TID","","false","true","\","S#Actual.Y#2023.P#Dec","{[Base]}","{[Base]}","","TransactionID","");
```

#### CreateAutoMatchByAccountTemplate

> [!NOTE]
> Saves an Auto Match by Account template to Document Manager. Parameters 1–10 are as for `CreateAutoMatchByIDTemplate`, including the ICP warning.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1–10 | | As for `CreateAutoMatchByIDTemplate` |
| 11 | Accounts | Accounts separated by commas (`A#` is added if missing) |
| 12 | Matching Accounts | Accounts separated by commas |

**Example**

```text
CreateAutoMatchByAccountTemplate("MatchAcct","Match by account","","false","true","\","S#Actual.Y#2023.P#Dec","{[Base]}","{[Base]}","","ICRec","ICPay");
```

### Reason codes

#### CreateReasonCode

> [!NOTE]
> Creates an intercompany reason code.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Label | ✓ | |
| Description | ✓ | |

**Example**

```text
CreateReasonCode("TIMING","Timing difference");
```

#### DeleteReasonCode

> [!NOTE]
> Deletes an intercompany reason code.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Label | ✓ | |

**Example**

```text
DeleteReasonCode("TIMING");
```

#### DeleteAllReasonCodes

> [!NOTE]
> Deletes every intercompany reason code.

> [!CAUTION]
> Be careful when running this command.

**Input**

None

**Example**

```text
DeleteAllReasonCodes();
```

#### ListReasonCodes

> [!NOTE]
> Writes every reason code to a file (`Label;Description`).

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | |

**Example**

```text
ListReasonCodes("C:\Output\reasoncodes.txt");
```

### Locking and monitoring

#### LockICEntity

> [!NOTE]
> Locks entities for intercompany in a period. Each entity's result is written to the log. The command fails if any entity couldn't be locked.

> [!WARNING]
> A command with the same name on the [Data Grid](04-data-grid.md) page does nothing. JHAT keeps only one command per name, and which one it keeps depends on the order the handlers are loaded. Check the log for "Succesfully locked entity" lines to confirm this version ran.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Entities | ✓ | Entities separated by commas |

**Example**

```text
LockICEntity("Actual","2023","Dec","EntityA,EntityB");
```

#### UnLockICEntity

> [!NOTE]
> Unlocks entities for intercompany in a period. The same-name warning for `LockICEntity` applies.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Entities | ✓ | Entities separated by commas |

**Example**

```text
UnLockICEntity("Actual","2023","Dec","EntityA,EntityB");
```

#### ListMonitorIntercompany

> [!NOTE]
> Writes the Monitor Intercompany list (up to 500 entities) to a file. Columns: `Entity;Process Status;Lock Status;UserId;Date/Time`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Output File | ✓ | |

**Example**

```text
ListMonitorIntercompany("Actual","2023","Dec","C:\Output\icmonitor.txt");
```

#### ListMonitorIntercompanySummary

> [!NOTE]
> Writes the Monitor Intercompany summary to a file: the number of Not Started and Started entities that are locked, unlocked and in total.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Output File | ✓ | |

**Example**

```text
ListMonitorIntercompanySummary("Actual","2023","Dec","C:\Output\icsummary.txt");
```

#### FilterMonitorIntercompany

> [!NOTE]
> Writes a filtered Monitor Intercompany list (up to 500 entities) to a file, in the same format as `ListMonitorIntercompany`.

**Input**

Pass 5 parameters, or all 8.

| # | Parameter | Comment |
| --- | --- | --- |
| 1–3 | Scenario, Year, Period | |
| 4 | Entities | Entities separated by `;` |
| 5 | Output File | |
| 6 | Active Only | `true` / `false` |
| 7 | Process Status | `Started`, `Not Started`, or anything else for both |
| 8 | Lock Status | `Lockable`, `Not Lockable`, `Locked`, or anything else for all |

**Example**

```text
FilterMonitorIntercompany("Actual","2023","Dec","EntityA;EntityB","C:\Output\icmonitor.txt","true","Started","All");
```
