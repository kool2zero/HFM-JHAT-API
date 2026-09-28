# JHAT Commands: InterCompany

[← Back to index](../README.md)

#### Overview

These JHAT commands will perform intercompany tasks

#### Commands

These commands need an open application. Text values are matched ignoring case.

- **List numbers:** where a parameter takes a list number, use a list built with `AddItemToList` or `AddItemsToListFromMemberlist` (see [Extracts](07-extracts.md#lists)), or `All`. For entity and partner lists, JHAT uses the Entity or ICP list with that number, and falls back to the string list with that number if that list is empty.
- **Custom dimensions in POV strings:** in the POVs taken by `CreateICTransaction`, `ProcessICTransactions` and `EditICTransaction`, write custom dimensions with their **full dimension name** (e.g. `Flows#Increases`), not `C1#` or the short name. Only `AddICTransactionToList` accepts `C1#`, `C2#`, ….
- **Output files:** written in UTF-8, semicolon-separated, and overwritten if they exist.

##### Periods

<details id="bkmrk-OpenICPeriod-"><summary>OpenICPeriod</summary>

<p class="callout info">Opens an intercompany period and sets its matching tolerances.</p>

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

```dart
OpenICPeriod("Actual","2023","Dec","Yes","10");
OpenICPeriod("Actual","2023","Dec","Yes","10","5","10","1");
```

</details><details id="bkmrk-UpdateICPeriod-"><summary>UpdateICPeriod</summary>

<p class="callout info">Changes an intercompany period's settings. Parameters are as for <code>OpenICPeriod</code>. HFM's response status and error text are written to the log, but the command reports success either way.</p>

**Example**

```dart
UpdateICPeriod("Actual","2023","Dec","Restrict","10","5","10","1");
```

</details><details id="bkmrk-CloseICPeriod-"><summary>CloseICPeriod</summary>

<p class="callout info">Closes an intercompany period.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |

**Example**

```dart
CloseICPeriod("Actual","2023","Dec");
```

</details><details id="bkmrk-ListICPeriods-"><summary>ListICPeriods</summary>

<p class="callout info">Writes each intercompany period of a scenario and year to a file. Columns: <code>Period;Status;Trans id tolerance amount;Trans id tolerance percentage;Account Tolerance;Manual Tolerance;Match/Validate Before Post</code>. Status is Unopened, Opened or Closed.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Output File | ✓ | |

**Example**

```dart
ListICPeriods("Actual","2023","C:\Output\icperiods.txt");
```

</details>

##### Transactions

<details id="bkmrk-CreateICTransaction-"><summary>CreateICTransaction</summary>

<p class="callout info">Creates an intercompany transaction.</p>

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

```dart
CreateICTransaction("S#Actual.Y#2023.P#Dec.E#EntityA.I#EntityB.A#ICRec","T001","S01","REF1","12/31/2023","USD","1000","1000","","","","1");
```

</details><details id="bkmrk-EditICTransaction-"><summary>EditICTransaction</summary>

<p class="callout info">Changes fields on the intercompany transactions that match a POV, transaction ID and sub ID. The field names and new values come from two string lists (built with <code>AddItemToList</code>, dimension <code>""</code>). The first name goes with the first value, and so on.</p>

<p class="callout warning">Only one custom dimension can be changed per call. <code>TRANSACTION_AMOUNT</code> and <code>TRANSACTION_CURRENCY</code> overwrite each other, so change them in separate calls.</p>

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

```dart
InitLists();
AddItemToList("1","","REFERENCE_ID");
AddItemToList("1","","COMMENT_1");
AddItemToList("2","","REF2");
AddItemToList("2","","Corrected");
EditICTransaction("S#Actual.Y#2023.P#Dec.E#EntityA.I#EntityB.A#ICRec","T001","S01","1","2");
```

</details><details id="bkmrk-GetICTransactions-"><summary>GetICTransactions</summary>

<p class="callout info">Writes every intercompany transaction for a scenario, year and period to a file.</p>

The columns are Status (`match:post`), Transaction ID, Transaction Sub ID, Entity, ICP(Partner), Account, Translated Amount, Entity Currency Amount, Translated EC amount, Reference ID, Match Code, Reason Code, Transaction Amount, Rate, then one column per custom dimension. Amounts are followed by their currency.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Output File | ✓ | |

**Example**

```dart
GetICTransactions("Actual","2023","Dec","C:\Output\ictrans.txt");
```

</details><details id="bkmrk-FilterICTransactions-"><summary>FilterICTransactions</summary>

<p class="callout info">Writes the intercompany transactions matching the filters to a file, in the same format as <code>GetICTransactions</code>. Leave a filter as <code>""</code> to not filter on it.</p>

<p class="callout warning">Known bugs in this command:</p>

- **Dates:** the date filters are parsed as `mm/dd/yyyy`, where `mm` means *minutes*, so the month is ignored and the dates come out wrong.
- **Display Partner Transactions:** this parameter overwrites Display Entity Transactions instead of setting its own option.

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

```dart
FilterICTransactions("Actual","2023","Dec","EntityA;EntityB","","","","","","","","","","","","","","","","true","true","true","true","true","C:\Output\ictrans.txt");
```

</details><details id="bkmrk-DisplayICTransactions-"><summary>DisplayICTransactions</summary>

<p class="callout info">Writes every intercompany transaction for a scenario, year and period to a file (same format as <code>GetICTransactions</code>), with display options.</p>

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

```dart
DisplayICTransactions("Actual","2023","Dec","","","","E#BOTH","C:\Output\ictrans.txt");
```

</details>

##### Processing transactions

<details id="bkmrk-ProcessAllICTransactions-"><summary>ProcessAllICTransactions</summary>

<p class="callout info">Posts, unposts, deletes or unmatches every intercompany transaction in a period, and waits for the task to finish.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Action | ✓ | `Post`, `UnPost`, `Delete` or `UnMatch`. Anything else fails. |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |

**Example**

```dart
ProcessAllICTransactions("Post","Actual","2023","Dec");
```

</details><details id="bkmrk-InitICTransactionList-"><summary>InitICTransactionList</summary>

<p class="callout info">Empties the in-memory list of transactions used by <code>ProcessICTransaction</code>.</p>

**Input**

None

**Example**

```dart
InitICTransactionList();
```

</details><details id="bkmrk-AddICTransactionToList-"><summary>AddICTransactionToList</summary>

<p class="callout info">Adds a transaction to the in-memory list used by <code>ProcessICTransaction</code>. The transaction is identified by entity, partner, account, custom members, transaction ID and sub ID.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| POV | ✓ | POV string with Entity, ICP, Account and custom dimensions. `C1#`, `C2#`, … are accepted. |
| Transaction ID | ✓ | |
| Transaction Sub ID | ✓ | |

**Example**

```dart
AddICTransactionToList("S#Actual.Y#2023.P#Dec.E#EntityA.I#EntityB.A#ICRec.C1#Increases.C2#[None].C3#[None].C4#[None]","T001","S01");
```

</details><details id="bkmrk-ProcessICTransaction-"><summary>ProcessICTransaction</summary>

<p class="callout info">Processes the transactions in the list built with <code>AddICTransactionToList</code>. JHAT looks them up among the first 5,000 transactions of the period. Unlike <code>ProcessAllICTransactions</code>, it doesn't wait for a running task.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Action | ✓ | `Post`, `UnPost`, `Delete`, `UnMatch` or `ManualMatch` |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |

**Example**

```dart
InitICTransactionList();
AddICTransactionToList("S#Actual.Y#2023.P#Dec.E#EntityA.I#EntityB.A#ICRec.C1#[None].C2#[None].C3#[None].C4#[None]","T001","S01");
ProcessICTransaction("Post","Actual","2023","Dec");
```

</details><details id="bkmrk-ProcessICTransactions-"><summary>ProcessICTransactions</summary>

<p class="callout info">Processes the transactions matching a filter, and waits for the task to finish.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Action | ✓ | `Post`, `UnPost`, `Delete`, `UnMatch` or `ManualMatch` |
| Filter | ✓ | `S#`, `Y#`, `P#` (required), plus optional `E#` and `I#` (members separated by commas), `A#`, and custom dimensions by full name |
| Transaction ID | ✓ | or `""` |
| Transaction Sub ID | ✓ | or `""` |

**Example**

```dart
ProcessICTransactions("Post","S#Actual.Y#2023.P#Dec.E#EntityA,EntityB","","");
```

</details>

##### Matching

<details id="bkmrk-ICAutoMatchByID-"><summary>ICAutoMatchByID</summary>

<p class="callout info">Runs Auto Match by transaction ID or reference ID and waits for the task to finish.</p>

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

```dart
ICAutoMatchByID("Actual","2023","Dec","All","All","no","no","no","Transaction","All");
```

</details><details id="bkmrk-ICAutoMatchByAccount-"><summary>ICAutoMatchByAccount</summary>

<p class="callout info">Runs Auto Match by account and waits for the task to finish.</p>

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

```dart
ICAutoMatchByAccount("Actual","2023","Dec","All","All","no","no","no","ICRec","ICPay");
```

</details><details id="bkmrk-CreateAutoMatchByIDTemplate-"><summary>CreateAutoMatchByIDTemplate</summary>

<p class="callout info">Saves an Auto Match by ID template to Document Manager.</p>

<p class="callout warning">The ICP value gets an <code>E#</code> prefix (not <code>I#</code>) unless it already starts with <code>E#</code> or <code>E{</code>. This looks like a bug, so check the saved template's partner filter.</p>

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

```dart
CreateAutoMatchByIDTemplate("MatchTID","Match by TID","","false","true","\","S#Actual.Y#2023.P#Dec","{[Base]}","{[Base]}","","TransactionID","");
```

</details><details id="bkmrk-CreateAutoMatchByAccountTemplate-"><summary>CreateAutoMatchByAccountTemplate</summary>

<p class="callout info">Saves an Auto Match by Account template to Document Manager. Parameters 1–10 are as for <code>CreateAutoMatchByIDTemplate</code>, including the ICP warning.</p>

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1–10 | | As for `CreateAutoMatchByIDTemplate` |
| 11 | Accounts | Accounts separated by commas (`A#` is added if missing) |
| 12 | Matching Accounts | Accounts separated by commas |

**Example**

```dart
CreateAutoMatchByAccountTemplate("MatchAcct","Match by account","","false","true","\","S#Actual.Y#2023.P#Dec","{[Base]}","{[Base]}","","ICRec","ICPay");
```

</details>

##### Reason codes

<details id="bkmrk-CreateReasonCode-"><summary>CreateReasonCode</summary>

<p class="callout info">Creates an intercompany reason code.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Label | ✓ | |
| Description | ✓ | |

**Example**

```dart
CreateReasonCode("TIMING","Timing difference");
```

</details><details id="bkmrk-DeleteReasonCode-"><summary>DeleteReasonCode</summary>

<p class="callout info">Deletes an intercompany reason code.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Label | ✓ | |

**Example**

```dart
DeleteReasonCode("TIMING");
```

</details><details id="bkmrk-DeleteAllReasonCodes-"><summary>DeleteAllReasonCodes</summary>

<p class="callout info">Deletes every intercompany reason code.</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

None

**Example**

```dart
DeleteAllReasonCodes();
```

</details><details id="bkmrk-ListReasonCodes-"><summary>ListReasonCodes</summary>

<p class="callout info">Writes every reason code to a file (<code>Label;Description</code>).</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | |

**Example**

```dart
ListReasonCodes("C:\Output\reasoncodes.txt");
```

</details>

##### Locking and monitoring

<details id="bkmrk-LockICEntity-"><summary>LockICEntity</summary>

<p class="callout info">Locks entities for intercompany in a period. Each entity's result is written to the log. The command fails if any entity couldn't be locked.</p>

<p class="callout warning">A command with the same name on the <a href="04-data-grid.md">Data Grid</a> page does nothing. JHAT keeps only one command per name, and which one it keeps depends on the order the handlers are loaded. Check the log for "Succesfully locked entity" lines to confirm this version ran.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Entities | ✓ | Entities separated by commas |

**Example**

```dart
LockICEntity("Actual","2023","Dec","EntityA,EntityB");
```

</details><details id="bkmrk-UnLockICEntity-"><summary>UnLockICEntity</summary>

<p class="callout info">Unlocks entities for intercompany in a period. The same-name warning for <code>LockICEntity</code> applies.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Entities | ✓ | Entities separated by commas |

**Example**

```dart
UnLockICEntity("Actual","2023","Dec","EntityA,EntityB");
```

</details><details id="bkmrk-ListMonitorIntercompany-"><summary>ListMonitorIntercompany</summary>

<p class="callout info">Writes the Monitor Intercompany list (up to 500 entities) to a file. Columns: <code>Entity;Process Status;Lock Status;UserId;Date/Time</code>.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Output File | ✓ | |

**Example**

```dart
ListMonitorIntercompany("Actual","2023","Dec","C:\Output\icmonitor.txt");
```

</details><details id="bkmrk-ListMonitorIntercompanySummary-"><summary>ListMonitorIntercompanySummary</summary>

<p class="callout info">Writes the Monitor Intercompany summary to a file: the number of Not Started and Started entities that are locked, unlocked and in total.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Output File | ✓ | |

**Example**

```dart
ListMonitorIntercompanySummary("Actual","2023","Dec","C:\Output\icsummary.txt");
```

</details><details id="bkmrk-FilterMonitorIntercompany-"><summary>FilterMonitorIntercompany</summary>

<p class="callout info">Writes a filtered Monitor Intercompany list (up to 500 entities) to a file, in the same format as <code>ListMonitorIntercompany</code>.</p>

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

```dart
FilterMonitorIntercompany("Actual","2023","Dec","EntityA;EntityB","C:\Output\icmonitor.txt","true","Started","All");
```

</details>
