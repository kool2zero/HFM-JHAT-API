# JHAT Commands: Journals

[← Back to index](../README.md)

## Overview

Commands for journals, which record adjustments to data with an audit trail. Journals post to adjustment members of the Value dimension, such as `<Entity Curr Adjs>`.

- **Workflow:** a journal moves from **Working** to **Submitted** to **Approved** to **Posted**. A submitted journal can be rejected back to Working, and a posted journal can be unposted.
- **Periods:** journals can only be posted in a period that is open for journals (`OpenPeriod`).
- **Templates:** hold journal layouts for reuse. *Standard* templates are copied into new journals (`CreateJournalFromTemplate`). *Recurring* templates generate a journal each period (`GenerateRecurring`).
- **Balance types:** *Balanced* (total debits equal total credits), *Balanced by entity* (balanced within each entity) or *Unbalanced*.
- **Journal types:** *Regular*, *Auto-reversing* and *Auto-reversal*. Posting an auto-reversing journal automatically creates an auto-reversal journal that reverses it in the next period, with status Approved. An auto-reversal journal can only be posted or unposted.
- **Groups** are labels for organizing and filtering journals.

## Commands

These commands need an open application. Value names are matched ignoring case.

**Commands on this page:**

- **Journal workflow:** [SubmitJournal](#submitjournal), [UnSubmitJournal](#unsubmitjournal), [ApproveJournal](#approvejournal), [RejectJournal](#rejectjournal), [PostJournal](#postjournal), [UnPostJournal](#unpostjournal), [DeleteJournal](#deletejournal), [ScanJournal](#scanjournal), [GetJournal](#getjournal)
- **Creating journals:** [CreateJournal](#createjournal), [AddLineItemToJournal](#addlineitemtojournal), [GetAdjustments](#getadjustments)
- **Templates:** [CreateTemplate](#createtemplate), [AddLineToTemplate](#addlinetotemplate), [GetTemplate](#gettemplate), [DeleteTemplate](#deletetemplate), [ValidateJournalTemplatePOV](#validatejournaltemplatepov), [CreateJournalFromTemplate](#createjournalfromtemplate), [GenerateRecurring](#generaterecurring), [GenerateRecurringJournal](#generaterecurringjournal)
- **Listing:** [FilterJournals](#filterjournals), [FilterTemplates](#filtertemplates)
- **Periods and groups:** [OpenPeriod](#openperiod), [ClosePeriod](#closeperiod), [ListJournalPeriods](#listjournalperiods), [CreateJournalGroup](#createjournalgroup), [GetJournalGroups](#getjournalgroups), [DeleteJournalGroup](#deletejournalgroup), [DeleteAllJournalGroups](#deletealljournalgroups)
- **Settings:** [AddRegKey](#addregkey), [DeleteRegKey](#deleteregkey)

### Journal workflow

#### SubmitJournal

<p class="callout info">Submits a journal. If HFM returns error messages, they are written to the log (as <code>error :…</code>) and the command fails.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Journal Label | ✓ | |

**Example**

```dart
SubmitJournal("Actual","2023","Dec","JE001");
```

#### UnSubmitJournal

<p class="callout info">Unsubmits a journal. If HFM returns error messages, they are written to the log (as <code>error :…</code>) and the command fails.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Journal Label | ✓ | |

**Example**

```dart
UnSubmitJournal("Actual","2023","Dec","JE001");
```

#### ApproveJournal

<p class="callout info">Approves a journal. If HFM returns error messages, they are written to the log (as <code>error :…</code>) and the command fails.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Journal Label | ✓ | |

**Example**

```dart
ApproveJournal("Actual","2023","Dec","JE001");
```

#### RejectJournal

<p class="callout info">Rejects a journal. If HFM returns error messages, they are written to the log (as <code>error :…</code>) and the command fails.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Journal Label | ✓ | |

**Example**

```dart
RejectJournal("Actual","2023","Dec","JE001");
```

#### PostJournal

<p class="callout info">Posts a journal. If HFM returns error messages, they are written to the log (as <code>error :…</code>) and the command fails.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Journal Label | ✓ | |

**Example**

```dart
PostJournal("Actual","2023","Dec","JE001");
```

#### UnPostJournal

<p class="callout info">Unposts a journal. If HFM returns error messages, they are written to the log (as <code>error :…</code>) and the command fails.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Journal Label | ✓ | |

**Example**

```dart
UnPostJournal("Actual","2023","Dec","JE001");
```

#### DeleteJournal

<p class="callout info">Deletes a journal. If HFM returns error messages, they are written to the log (as <code>error :…</code>) and the command fails.</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Journal Label | ✓ | |

**Example**

```dart
DeleteJournal("Actual","2023","Dec","JE001");
```

#### ScanJournal

<p class="callout info">Validates a journal. Any validation errors are written to the log and the command fails.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Journal Label | ✓ | |

**Example**

```dart
ScanJournal("Actual","2023","Dec","JE001");
```

#### GetJournal

<p class="callout info">Writes a journal to the log: label, description, type, group, status, balance type, security class, value and period, then one tab-separated line per entry (dimension members, debit/credit/unit, amount, description). If the journal doesn't exist, nothing is logged and the command still succeeds.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Journal Label | ✓ | |

**Example**

```dart
GetJournal("Actual","2023","Dec","JE001");
```

### Creating journals

#### CreateJournal

<p class="callout info">Creates an empty journal with status Working. Add entries with <code>AddLineItemToJournal</code>. The journal's ID is written to the log.</p>

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | POV | POV string giving Scenario, Year, Period, Value, and (for a single-entity journal) Entity as `Entity` or `Parent.Entity`, e.g. `S#Actual.Y#2023.P#Dec.V#<Entity Curr Adjs>.E#Group.Entity1` |
| 2 | Type | `Regular`, `AutoReversing`, `AutoReversal` or `Unit` |
| 3 | Balance Type | `Balanced`, `UnBalanced` or `BalancedByEntity` |
| 4 | Label | Journal label |
| 5 | Description | |
| 6 | Group | Journal group, or `""` |
| 7 | Security Class | e.g. `[Default]` |
| 8 | Single or Multi | `Single` for a single-entity journal (entity from the POV). Anything else for multi-entity. |

**Example**

```dart
CreateJournal("S#Actual.Y#2023.P#Dec.V#<Entity Curr Adjs>.E#Group.Entity1","Regular","Balanced","JE001","Accrual","","[Default]","Single");
```

#### AddLineItemToJournal

<p class="callout info">Adds an entry to an existing journal and saves the journal.</p>

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | POV | POV string giving Scenario, Year and Period (to find the journal), the entry's Account, ICP and custom members, and for a multi-entity journal its Entity (`Entity` or `Parent.Entity`) |
| 2 | Journal Label | Journal to add to |
| 3 | Debit, Credit or Unit | `Debit`, `Credit` or `Unit` |
| 4 | Amount | |
| 5 | Description | Entry description |

**Example**

```dart
AddLineItemToJournal("S#Actual.Y#2023.P#Dec.A#Accruals.I#[ICP None].C1#[None].C2#[None].C3#[None].C4#[None]","JE001","Credit","1000","Accrual");
AddLineItemToJournal("S#Actual.Y#2023.P#Dec.A#Expenses.I#[ICP None].C1#[None].C2#[None].C3#[None].C4#[None]","JE001","Debit","1000","Accrual");
```

#### GetAdjustments

<p class="callout info">Writes the journal adjustments for the cell at the POV set by <code>SetPOV</code> to the log, or "No adjustments found."</p>

**Input**

None

**Example**

```dart
GetAdjustments();
```

### Templates

#### CreateTemplate

<p class="callout info">Creates an empty journal template. Add entries with <code>AddLineToTemplate</code>.</p>

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | POV | POV string giving Value (recurring templates only) and, for a single-entity template, Entity (`Entity` or `Parent.Entity`) |
| 2 | Balance Type | `Balanced`, `UnBalanced` or `BalancedByEntity` |
| 3 | Label | Template label |
| 4 | Description | |
| 5 | Group | Journal group, or `""` |
| 6 | Template Type | `Standard` or `Recurring` |
| 7 | Single or Multi | `Single` for a single-entity template. Anything else for multi-entity. |
| 8 | Security Class | e.g. `[Default]` |

Note that Security Class is the **last** parameter here, unlike `CreateJournal`.

**Example**

```dart
CreateTemplate("V#<Entity Curr Adjs>.E#Group.Entity1","Balanced","TPL001","Monthly accrual","","Recurring","Single","[Default]");
```

#### AddLineToTemplate

<p class="callout info">Adds an entry to an existing template and saves the template.</p>

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | POV | POV string giving the entry's Account, ICP and custom members, and for a multi-entity template its Entity |
| 2 | Template Label | Template to add to |
| 3 | Debit, Credit or Unit | `Debit`, `Credit` or `Unit` |
| 4 | Amount | |
| 5 | Description | Entry description |

**Example**

```dart
AddLineToTemplate("A#Accruals.I#[ICP None].C1#[None].C2#[None].C3#[None].C4#[None]","TPL001","Credit","1000","Accrual");
```

#### GetTemplate

<p class="callout info">Writes a template to the log: label, description, type, group, balance type, security class and its entries.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Template Label | ✓ | |

**Example**

```dart
GetTemplate("TPL001");
```

#### DeleteTemplate

<p class="callout info">Deletes a journal template.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Template Label | ✓ | |

**Example**

```dart
DeleteTemplate("TPL001");
```

#### ValidateJournalTemplatePOV

<p class="callout info">Asks HFM to validate a journal POV. If HFM returns an error, it's written to the log and the command fails.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| POV | ✓ | POV string |

**Example**

```dart
ValidateJournalTemplatePOV("S#Actual.Y#2023.P#Dec.V#<Entity Curr Adjs>.E#Entity1");
```

#### CreateJournalFromTemplate

<p class="callout info">Creates a Working journal from a template, for the Scenario, Year, Period and Value in the POV. Parameters 3–8 override the template's settings. Pass <code>""</code> to keep the template's value. The journal's ID is written to the log.</p>

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | POV | POV string giving Scenario, Year, Period and Value |
| 2 | Template Label | Template to copy |
| 3 | New Label | Journal label, or `""` to use the template's label |
| 4 | Type | `Regular`, `AutoReversing`, `AutoReversal` or `Unit`, or `""` |
| 5 | Balance Type | `Balanced`, `UnBalanced` or `BalancedByEntity`, or `""` |
| 6 | Description | or `""` |
| 7 | Group | or `""` |
| 8 | Security Class | or `""` |

**Example**

```dart
CreateJournalFromTemplate("S#Actual.Y#2023.P#Dec.V#<Entity Curr Adjs>","TPL001","JE-DEC","","","","","");
```

#### GenerateRecurring

<p class="callout info">Generates a journal from a recurring template for the Scenario, Year and Period in the POV.</p>

<p class="callout warning">If HFM reports validation errors, the command fails, but the errors are only printed to the console, not written to the log.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| POV | ✓ | POV string giving Scenario, Year and Period |
| Template Label | ✓ | Recurring template |

**Example**

```dart
GenerateRecurring("S#Actual.Y#2023.P#Dec","TPL001");
```

#### GenerateRecurringJournal

<p class="callout warning"><b>Does nothing.</b> The command's code is empty in this version of JHAT. Use <code>GenerateRecurring</code>.</p>

**Input**

8 parameters (ignored).

**Example**

```dart
GenerateRecurringJournal("","","","","","","","");
```

### Listing

#### FilterJournals

<p class="callout info">Writes a list of journals matching the filters to a UTF-8, semicolon-separated file, with a header line of column names.</p>

<p class="callout warning">JHAT's usage text lists 13 parameters, but the command needs 14. Its list leaves out the Description filter (parameter 11).</p>

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Output File | Local file to write |
| 2 | Sort | `A` (ascending) or `D` (descending) on the first column. Anything else means unsorted. |
| 3 | Scenario | |
| 4 | Year | |
| 5 | Period | |
| 6 | Value | e.g. `<Entity Curr Adjs>` |
| 7 | Columns | Columns to write, separated by `;`. See below. An unknown column fails with "Invalid column specified". |
| 8 | Entity Filter | or `""` |
| 9 | Group Filter | or `""` |
| 10 | Label Filter | or `""` |
| 11 | Description Filter | or `""` |
| 12 | Journal Types | `Regular`, `AutoReversing`, `AutoReversal` or `Unit`, separated by `;` |
| 13 | Balance Types | `Balanced`, `UnBalanced` or `BalancedByEntity`, separated by `;` |
| 14 | Statuses | `Working`, `Submitted`, `Approved`, `Rejected`, `Posted`, separated by `;` |

**Columns:** `Jnl_Label`, `Jnl_Status`, `Jnl_Type`, `Jnl_BalanceAttribute`, `Jnl_Group`, `Jnl_Description`, `Jnl_TruncatedDescription`, `Jnl_SecurityClass`, `Jnl_CreatedBy`, `Jnl_CreatedOn`, `Jnl_ApprovedBy`, `Jnl_ApprovedOn`, `Jnl_LastActedBy`, `Jnl_LastActedOn`, `Jnl_LineItemEntity`, `Jnl_LineItemParent`.

**Example**

```dart
FilterJournals("C:\Output\journals.txt","A","Actual","2023","Dec","<Entity Curr Adjs>","Jnl_Label;Jnl_Status;Jnl_Type","","","","","Regular;AutoReversing;AutoReversal;Unit","Balanced;UnBalanced;BalancedByEntity","Working;Submitted;Approved;Rejected;Posted");
```

#### FilterTemplates

<p class="callout info">Writes a list of journal templates matching the filters to a UTF-8, semicolon-separated file, with a header line of column names.</p>

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Output File | Local file to write |
| 2 | Sort | `A`, `D`, or anything else for unsorted |
| 3 | Columns | Columns to write, separated by `;`. See below. |
| 4 | Entity Filter | or `""` |
| 5 | Group Filter | or `""` |
| 6 | Label Filter | or `""` |
| 7 | Description Filter | or `""` |
| 8 | Template Type | One of `None`, `Standard` or `Recurring` |
| 9 | Balance Types | `Balanced`, `UnBalanced` or `BalancedByEntity`, separated by `;` |

**Columns:** `Tmp_Label`, `Tmp_Type`, `Tmp_BalanceAttribute`, `Tmp_Group`, `Tmp_Description`, `Tmp_TruncatedDescription`, `Tmp_SecurityClass`, `Tmp_ValueDimension`, `Tmp_LineItemEntity`, `Tmp_LineItemParent`.

**Example**

```dart
FilterTemplates("C:\Output\templates.txt","A","Tmp_Label;Tmp_Type;Tmp_Description","","","","","Recurring","Balanced;UnBalanced;BalancedByEntity");
```

### Periods and groups

#### OpenPeriod

<p class="callout info">Opens a period for journals.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |

**Example**

```dart
OpenPeriod("Actual","2023","Dec");
```

#### ClosePeriod

<p class="callout info">Closes a period for journals.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |

**Example**

```dart
ClosePeriod("Actual","2023","Dec");
```

#### ListJournalPeriods

<p class="callout info">Writes each period's journal status for a scenario and year to the log (<code>Period:…</code> / <code>Status:…</code>).</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |

**Example**

```dart
ListJournalPeriods("Actual","2023");
```

#### CreateJournalGroup

<p class="callout info">Creates a journal group.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Name | ✓ | |
| Description | ✓ | |

**Example**

```dart
CreateJournalGroup("ACCRUALS","Month-end accruals");
```

#### GetJournalGroups

<p class="callout info">Writes every journal group's name and description to the log.</p>

**Input**

None

**Example**

```dart
GetJournalGroups();
```

#### DeleteJournalGroup

<p class="callout info">Deletes a journal group.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Name | ✓ | |

**Example**

```dart
DeleteJournalGroup("ACCRUALS");
```

#### DeleteAllJournalGroups

<p class="callout info">Deletes every journal group.</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

None

**Example**

```dart
DeleteAllJournalGroups();
```

### Settings

#### AddRegKey

<p class="callout info">Sets HFM's cached journal-ordering system parameter.</p>

<p class="callout warning">The parameter is required but ignored. The command always sets the same fixed setting.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Key | ✓ | Ignored |

**Example**

```dart
AddRegKey("");
```

#### DeleteRegKey

<p class="callout info">Deletes HFM's cached journal-ordering system parameter.</p>

<p class="callout warning">The parameter is required but ignored.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Key | ✓ | Ignored |

**Example**

```dart
DeleteRegKey("");
```
