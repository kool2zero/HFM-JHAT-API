# JHAT Commands: Data Grid

[← Back to index](../README.md)

## Overview

These JHAT Commands relate to the data grid.

> Data grids are a powerful feature in HFM (Hyperion Financial Management) that allow users to view and manipulate financial data in a flexible and dynamic manner. Essentially, a data grid is a spreadsheet-like interface that displays financial data organized by dimensions such as time, accounts, entities, and scenarios.
> 
> With data grids in HFM, users can perform a range of tasks such as entering, editing, and aggregating data, performing calculations and consolidations, and exporting data for analysis or reporting. They can also customize the appearance and behavior of the data grid by selecting columns, filtering data, and applying formatting options.
> 
> Data grids in HFM offer several benefits for financial reporting and analysis. They provide a highly interactive and user-friendly interface for accessing and manipulating financial data, which can improve efficiency and accuracy in financial reporting processes. They also allow for real-time data analysis and scenario planning, which can help organizations to make informed financial decisions and respond quickly to changes in the business environment.
> 
> Overall, data grids are an essential tool for any organization using HFM for financial management and reporting, providing a powerful and flexible way to manage financial data and support effective decision-making.

## Commands

Unless noted otherwise, these commands work on the POV set by `SetPOV` / `SetPOVExtDim` and need an open application. A command that needs a POV fails with "SetPOV is not called before calling Set Cell…" if none has been set.

- **Output files** are written in UTF-8 and overwritten if they exist.
- **true/false parameters:** `true` (any case) means true. Any other value means false.
- **Lists** (as in "StringList number") are the numbered lists built with `AddItemToList` on the [Extracts](07-extracts.md) page.

**Commands on this page:**

- **Defining and reading grids:** [DefineGrid](#definegrid), [DefineGridExtDim / DefineDataRetrieval](#definegridextdim--definedataretrieval), [GetGrid](#getgrid), [GetGridExtDim / GetCellsExtDim](#getgridextdim--getcellsextdim)
- **Cell data:** [SetCell](#setcell), [GetCell](#getcell), [GetCellInfo](#getcellinfo), [GetCellHistory](#getcellhistory), [GetCellEntityDetails](#getcellentitydetails), [GetSourceTransactions](#getsourcetransactions), [GetDestinationTransactions](#getdestinationtransactions), [GetLineItemDetail](#getlineitemdetail), [SetLineItemDetail](#setlineitemdetail)
- **Cell text and attachments:** [SetCellTextEnhanced](#setcelltextenhanced), [deleteCellTextEnhanced](#deletecelltextenhanced), [DetachCellDocument](#detachcelldocument), [AttachCellDocumentEnhanced / AttachCellDocument](#attachcelldocumentenhanced--attachcelldocument), [GetCellTextAttachmentsEnhanced](#getcelltextattachmentsenhanced), [GetCellTextEnhanced](#getcelltextenhanced)
- **Calculation and consolidation:** [Lock](#lock), [Unlock](#unlock), [Translate](#translate), [Allocate](#allocate), [Consolidate](#consolidate), [ChartLogic](#chartlogic), [LockICEntity](#lockicentity), [UnlockICEntity](#unlockicentity)
- **Process control:** [GetProcessControlGrid](#getprocesscontrolgrid), [FilterProcessControlGrid](#filterprocesscontrolgrid), [DisplayProcessControlGrid](#displayprocesscontrolgrid), [GetReviewLevelSummary](#getreviewlevelsummary), [GetCalcStatusSummary](#getcalcstatussummary), [GetValidationAccountInfo](#getvalidationaccountinfo), [GetCellStatus](#getcellstatus)

### Defining and reading grids

#### DefineGrid

> [!NOTE]
> Defines a data grid with one row dimension and one column dimension. All other dimensions come from the current POV. The grid is used by `GetGrid`, `GetGridExtDim` and `GetCellsExtDim`. Defining a new grid removes the previous one.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Row Dimension | ✓ | Dimension name or short name (`A`, `E`, `C1`…) for the rows |
| Row List | ✓ | Member list for the rows, e.g. `[Hierarchy]`, `[Base]`, `[Descendants]` |
| Row Top Member | ✓ | Top member for the list, or `""` for none |
| Column Dimension | ✓ | Dimension for the columns |
| Column List | ✓ | Member list for the columns |
| Column Top Member | ✓ | Top member for the list, or `""` for none |

**Example**

```text
DefineGrid("Account","[Hierarchy]","","Period","[Hierarchy]","");
DefineGrid("Entity","[Base]","TotalGroup","Period","[Base]","");
```

#### DefineGridExtDim / DefineDataRetrieval

> [!NOTE]
> Defines a data grid that can have several row and column dimensions. `DefineGridExtDim` and `DefineDataRetrieval` are identical. All other dimensions come from the current POV. Defining a new grid removes the previous one.

**Input**

Each parameter is one or more `Dimension{list}` or `Dimension{TopMember.list}` entries joined with `.`. The dimension can be a name or short name (`A`, `E`, `C1`…). **Each dimension must have a `{…}` part**. A bare dimension name like `"Account"` makes the command fail.

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Row Dimension(s) | ✓ | e.g. `A{[Base]}` or `E{TotalGroup.[Descendants]}.A{[Base]}` |
| Column Dimension(s) | ✓ | e.g. `P{[Base]}` |

An unknown dimension fails with "Invalid dimension short name".

**Example**

```text
DefineGridExtDim("A{[Base]}","P{[Base]}");
DefineDataRetrieval("E{TotalGroup.[Descendants]}.A{NetIncome.[Descendants]}","P{[Base]}");
```

#### GetGrid

> [!NOTE]
> Writes rows of the grid defined by `DefineGrid` / `DefineGridExtDim` to a semicolon-separated file. Column headers come first, then one line per row with its row headers followed by the cell values. JHAT remembers the current row between calls, so you can page through a grid with `DOWN`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | Local file to write |
| Type of Extract | ✓ | What to write for each cell (any case). See the table below. |
| Direction | ✓ | `ALL`: every row, from the top. `DOWN`: the next *n* rows from the current row. `UP`: the *n* rows before the current row. |
| Number of Rows | ✓ | Number of rows for `UP` / `DOWN`. Must be a number, even with `ALL`. |

| Type of Extract | Cell contents |
| --- | --- |
| `VALUE` | Cell value |
| `STATUS` or `CALCSTATUS` | Calculation status code, e.g. `OK`, `CN` (see [Status text](#status-text)) |
| `PROCESS` | Process management status, e.g. `Review Level 2` (see [Status text](#status-text)) |
| `DROID` | Raw numeric cell status |
| `STATUSHEX` | Raw cell status in hexadecimal |
| `NOTHING` | No grid. The file only says how many rows the grid has. |

**Example**

```text
DefineGrid("Account","[Base]","","Period","[Base]","");
GetGrid("C:\Output\grid.txt","VALUE","ALL","0");
```

#### GetGridExtDim / GetCellsExtDim

> [!NOTE]
> Writes the whole grid defined by `DefineGrid` / `DefineGridExtDim` to a semicolon-separated file, in the same layout as `GetGrid`. `GetGridExtDim` and `GetCellsExtDim` are identical.

> [!WARNING]
> The extract types differ from `GetGrid`. Here `STATUS` gives the raw numeric cell status, and `CALCSTATUS` gives the calculation status text.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | Local file to write |
| Type of Extract | ✓ | `VALUE`, `CALCSTATUS` (calc status text), `STATUS` or `DROID` (numeric status), `STATUSHEX`, `PROCESS` or `NOTHING` |

**Example**

```text
GetGridExtDim("C:\Output\grid.txt","VALUE");
```

### Cell data

#### SetCell

> [!NOTE]
> Sets the value of the cell at the current POV. The cell must be an input cell.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Value | ✓ | Value to store |

**Example**

```text
SetCell("999999");
```

#### GetCell

> [!NOTE]
> Writes the cell at the current POV to the log: displayed data, full-resolution data, stored data, calculation status and cell status.

**Input**

None

**Example**

```text
GetCell();
```

#### GetCellInfo

> [!NOTE]
> Writes detailed information about the cell at the current POV to the log:

- **POV:** process unit, POV detail, view, phase and account calculation attribute
- **Status:** calculation status, process level, cell status and security class (see [Status text](#status-text))
- **Data:** scale, number of decimals, and displayed, full-resolution and stored data

**Input**

None

**Example**

```text
GetCellInfo();
```

#### GetCellHistory

> [!NOTE]
> Writes the change history of the cell at the current POV to a file: user, server, activity, time modified and value for each change.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```text
GetCellHistory("C:\Output\history.txt");
```

#### GetCellEntityDetails

> [!NOTE]
> Writes the Entity Details report for the current POV to a colon-separated file.

The report includes:

- **Rows:** base details, source and destination transactions, line item details, and journals
- **Columns:** debit, credit, ID and remarks, broken out by Entity, Account, ICP and each custom dimension

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```text
GetCellEntityDetails("C:\Output\entitydetails.txt");
```

#### GetSourceTransactions

> [!NOTE]
> Writes the source transactions for the cell at the current POV (statutory applications) to a semicolon-separated file. Columns: `Current Entity;Parent;Source Data;Destination Data;Factor;Nature`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```text
GetSourceTransactions("C:\Output\source.txt");
```

#### GetDestinationTransactions

> [!NOTE]
> Writes the destination transactions for the cell at the current POV (statutory applications) to a semicolon-separated file, in the same format as `GetSourceTransactions`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```text
GetDestinationTransactions("C:\Output\destination.txt");
```

#### GetLineItemDetail

> [!NOTE]
> Writes the line item detail for the cell at the current POV to a semicolon-separated file (`Description;Line Item Data`). Line item detail only applies to scenarios and accounts set up to use it, and only for the Entity Currency Value member.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```text
GetLineItemDetail("C:\Output\lineitems.txt");
```

#### SetLineItemDetail

> [!NOTE]
> Sets one line item on each of several cells. The POVs and values come from two string lists built with `AddItemToList` (dimension `""`). The lists must have the same number of items. The first POV gets the first value, and so on. Every line item gets the same description.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| POV List Number | ✓ | Number of the string list holding the POV strings |
| Values List Number | ✓ | Number of the string list holding the values |
| Description | ✓ | Line item description |

**Example**

```text
InitLists();
AddItemToList("1","","S#Actual.Y#2023.P#Jan.W#YTD.E#Entity1.V#<Entity Currency>.A#Cash.I#[ICP None].C1#[None].C2#[None].C3#[None].C4#[None]");
AddItemToList("2","","1000");
SetLineItemDetail("1","2","Opening balance");
```

### Cell text and attachments

#### SetCellTextEnhanced

> [!NOTE]
> Sets the cell text for a cell text label on the cell at the current POV.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label, e.g. `[Default]` |
| Text | ✓ | Text to store |

**Example**

```text
SetCellTextEnhanced("[Default]","Reviewed by Finance");
```

#### deleteCellTextEnhanced

> [!NOTE]
> Deletes the text, the attachments, or both, for a cell text label on the cell at the current POV.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label |
| What to Delete | ✓ | `All`, `Text` or `Attachments` |

**Example**

```text
deleteCellTextEnhanced("[Default]","All");
```

#### DetachCellDocument

> [!NOTE]
> Removes one attached document from a cell text label on the cell at the current POV. The text and other attachments are kept.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label |
| File Name | ✓ | Name of the attached document to remove (matched ignoring case) |

**Example**

```text
DetachCellDocument("[Default]","Support.pdf");
```

#### AttachCellDocumentEnhanced / AttachCellDocument

> [!NOTE]
> Attaches a document that is already in Document Manager to the cell at the current POV. Existing text and attachments for the label are kept. `AttachCellDocument` always uses the `[Default]` label.

**Input: AttachCellDocumentEnhanced**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label |
| File Name | ✓ | Name of the document |
| Folder | ✓ | Document Manager folder holding the document |

**Input: AttachCellDocument**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| File Name | ✓ | Name of the document |
| Folder | ✓ | Document Manager folder holding the document |

**Example**

```text
AttachCellDocumentEnhanced("[Default]","Support.pdf","\Documents\Support");
AttachCellDocument("Support.pdf","\Documents\Support");
```

#### GetCellTextAttachmentsEnhanced

> [!NOTE]
> Lists the attached documents on the cell at the current POV. Each is written to the file and the log as `Label <label> attachment is : <file>`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label, or `All` for every label |
| Output File Path | ✓ | Local file to write |

**Example**

```text
GetCellTextAttachmentsEnhanced("All","C:\Output\attachments.txt");
```

#### GetCellTextEnhanced

> [!NOTE]
> Gets the cell text on the cell at the current POV. Each label is written to the file and the log as `Label <label> is : <text>`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label, or `All` for every label |
| Output File Path | ✓ | Local file to write |

**Example**

```text
GetCellTextEnhanced("All","C:\Output\celltext.txt");
```

### Calculation and consolidation

#### Lock

> [!NOTE]
> Runs the [Lock](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s09.html) command on the current POV. Locking a period for an entity prevents any further changes to its data, for example after the period is closed. The command fails if the server returns an error code.

**Input**

None

**Example**

```text
Lock();
```

#### Unlock

> [!NOTE]
> Runs the [Unlock](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s10.html) command on the current POV, so its data can be changed again. The command fails if the server returns an error code.

**Input**

None

**Example**

```text
Unlock();
```

#### Translate

> [!NOTE]
> Runs the [Translate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s05.html) command on the current POV. Translation converts an entity's data from its own currency to its parent's currency (or another currency member of the Value dimension) using the exchange rates in the application. The command fails if the server returns an error code.

**Input**

None

**Example**

```text
Translate();
```

#### Allocate

> [!NOTE]
> Runs the [Allocate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s07.html) command on the current POV. Allocation runs the `Sub Allocate` routine in the application's rules, which distributes amounts (such as shared costs) to other entities. The command fails if the server returns an error code.

**Input**

None

**Example**

```text
Allocate();
```

#### Consolidate

> [!NOTE]
> Runs the [Consolidate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s07.html) command on the current POV, and optionally on extra POVs from a string list. Consolidation also runs for all descendant entities and for all earlier periods in the same year. JHAT waits for every consolidation task to finish (see [long-running tasks](00-automation-with-jhat.md#long-running-tasks)). The command fails if the last task doesn't complete.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Type | ✓ | `Impacted`: consolidate only the entities whose data has changed since the last consolidation. `AllWithData`: consolidate every entity that has data. `All`: consolidate every entity, even those without data (slowest). `EntityOnly`: Calculate Contribution, which calculates the contribution values of all the entity's dependent entities, without consolidating. `ForceEntityOnly`: the same, even if nothing has changed. Any other value fails with "Invalid arguments value for consolidation." |
| POV List Number | | Number of a string list (built with `AddItemToList`, dimension `""`) of extra POV strings to consolidate along with the current POV |

**Example**

```text
Consolidate("Impacted");
Consolidate("AllWithData","3");
```

#### ChartLogic

> [!NOTE]
> Runs the [Calculate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s04.html) command on the current POV. Calculation runs the application's rules for the entity's own data, without translating or consolidating. Unlike `Consolidate`, it doesn't wait for a running task. The command fails if the server returns an error code.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Force | ✓ | `true`: Force Calculate. Any other value: Calculate. |

**Example**

```text
ChartLogic("true");
```

#### LockICEntity

> [!WARNING]
> This version's code is empty, so it does nothing. The [Intercompany](08-intercompany.md) handler registers a working command with the same name (`LockICEntity`, parameters as below except Entities is a comma-separated list). JHAT keeps only one command per name, depending on the order the handlers are loaded. See the Intercompany page.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Entity | ✓ | |

**Example**

```text
LockICEntity("Actual","2023","Dec","Entity1");
```

#### UnlockICEntity

> [!WARNING]
> This version's code is empty, so it does nothing. The [Intercompany](08-intercompany.md) handler registers a working command with the same name (`UnLockICEntity`, parameters as below except Entities is a comma-separated list). JHAT keeps only one command per name, depending on the order the handlers are loaded. See the Intercompany page.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Entity | ✓ | |

**Example**

```text
UnlockICEntity("Actual","2023","Dec","Entity1");
```

### Process control

The process control commands don't use `DefineGrid`. They build their own grid from the Scenario, Year, Period and Entity in the current POV:

- **Entity:** can be a single member or a member list in the form `{TopMember.[List]}` or `{[List]}`.
- **Rows:** entities.
- **Accounts:** the application's validation accounts.
- **Value:** `<Entity Curr Total>` unless a Data View parameter changes it.
- **Grid replacement:** each command replaces any grid from `DefineGrid`.

**Data View** values (any case): `Translation` → `<Parent Curr Total>`, `Contribution` → `[Contribution Total]`, anything else → `<Entity Curr Total>`.

#### GetProcessControlGrid

> [!NOTE]
> Writes the process control grid to a file. The parameters and output are the same as `GetGrid`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | Local file to write |
| Type of Extract | ✓ | As for `GetGrid`. `PROCESS` gives the process management status. |
| Direction | ✓ | `ALL`, `DOWN` or `UP` |
| Number of Rows | ✓ | Number of rows for `UP` / `DOWN` |

**Example**

```text
SetPOV("Actual","2023","Dec","YTD","{TotalGroup.[Descendants]}","<Entity Currency>","[None]","[ICP None]","[None]","[None]","[None]","[None]");
GetProcessControlGrid("C:\Output\pcgrid.txt","PROCESS","ALL","0");
```

#### FilterProcessControlGrid

> [!NOTE]
> Writes the process control grid to a file, filtered by phase, review level, pass/fail and calculation status. Text values are matched ignoring case. A filter value that isn't recognized is ignored.

**Input**

The first 9 parameters are required. The last 2 are optional.

| # | Parameter | Comment |
| --- | --- | --- |
| 1–4 | Output File, Type of Extract, Direction, Number of Rows | As for `GetGrid` |
| 5 | Phase | Phase number, or `All` / `""` for all phases |
| 6 | Review Level | `All`, `Not Started`, `First Pass`, `Level 1` … `Level 10`, `Submitted`, `Approved`, `Published` |
| 7 | Range | `And Above`, `And Below` or `Only`. Ignored when Review Level is `All`. |
| 8 | Show Pass/Fail | `Pass and Fail`, `Pass Only` or `Fail Only` |
| 9 | Status | `All`, `NoData`, `OK`, `OK SC`, `CH`, `CN`, `TR`, `OK ND`, `CH ND`, `CN ND`, `TR ND`, `Locked` |
| 10 | Data View | Optional. See Data View values above. |
| 11 | Sort | Optional. `Ascending` or `Descending` by review level. Otherwise unsorted. |

**Example**

```text
FilterProcessControlGrid("C:\Output\pcgrid.txt","PROCESS","ALL","0","All","Level 1","And Above","Pass and Fail","All","","Ascending");
```

#### DisplayProcessControlGrid

> [!NOTE]
> Writes the process control grid to a file, with display options that match the Process Control page.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1–4 | Output File, Type of Extract, Direction, Number of Rows | As for `GetGrid` |
| 5 | Data View | See Data View values above |
| 6 | Style | `Tree` for a tree view. Anything else gives a list. |
| 7 | Entity View | `Label`, `Description` or `Both` (`label - description`) |
| 8 | Active | `Y` to show only entities active in the period (not with Period View `All`) |
| 9 | Period View | `Single`: the POV period. `All`: every period in the scenario's frequency. |
| 10 | Review Level Columns | Single period only. Include any of `REVIEW`, `PASS`, `VALIDATION`, e.g. `"Review,Pass"`. |
| 11 | Status Columns | Include `CALC` for calculation status and/or `JOURNAL` for journal status, e.g. `"Calc,Journal"` |
| 12 | Phases | `All` or a phase number |

**Example**

```text
DisplayProcessControlGrid("C:\Output\pcgrid.txt","PROCESS","ALL","0","","List","Both","N","Single","Review,Pass,Validation","Calc,Journal","All");
```

#### GetReviewLevelSummary

> [!NOTE]
> Writes the number of entities at each review level to a file. One `Level= count` line per level (Not Started, First Pass, Review Level 1–10, Submitted, Approved, Published), followed by `Entities Displayed= total`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```text
GetReviewLevelSummary("C:\Output\reviewlevels.txt");
```

#### GetCalcStatusSummary

> [!NOTE]
> Writes the number of entities at each calculation status to a semicolon-separated file. The groups are OK (with totals), No Data, Impacted, and Locked.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |
| Data View | | See Data View values above |

**Example**

```text
GetCalcStatusSummary("C:\Output\calcstatus.txt","Translation");
```

#### GetValidationAccountInfo

> [!NOTE]
> Writes the phase submission validation grid for a POV and phase to a comma-separated file. It doesn't use the current POV.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| POV | ✓ | POV string |
| Phase Number | ✓ | Phase number |
| Data View | ✓ | `Translation`, `Contribution`, or anything else for local (entity currency) |
| Suppress Zeros | ✓ | `true` / `false` |
| Suppress No Data | ✓ | `true` / `false` |
| Formatted Data | ✓ | `true` / `false` |
| Output File Path | ✓ | Local file to write |

**Example**

```text
GetValidationAccountInfo("S#Actual.Y#2023.P#Dec.E#Entity1","1","","true","true","false","C:\Output\validation.csv");
```

#### GetCellStatus

> [!CAUTION]
> **Don't use.** This is leftover test code. It ignores the current POV, reads a hardcoded POV from a sample application (`S#Actual.Y#2011.P#Quarter4…E#GROUP.CORP_OPS…`) 20,000 times, and writes nothing.

**Input**

None

**Example**

```text
GetCellStatus();
```

## Status text

**Grid calculation status.** Written by `GetGrid` with `STATUS`/`CALCSTATUS`, by `GetGridExtDim` with `CALCSTATUS`, and by the process control grids:

| Code | Meaning |
| --- | --- |
| `OK` | Calculated and up to date |
| `OK SC` | OK, but the system has changed (e.g. rules or metadata reloaded) |
| `CH` | Needs calculation |
| `TR` | Needs translation |
| `CN` | Needs consolidation |
| `LOCKED` | Locked |
| `NODATA` | No data |
| `NOACCESS` | No read access |

` ND` is added to a code when the Value member has no data (e.g. `CN ND`).

**Process management status.** Written with `PROCESS`: `Not Supported`, `Not Started`, `First Pass`, `Review Level 1` … `Review Level 10`, `Submitted`, `Approved`, `Published`, `NOACCESS` (no read access) or `Unknown`.

**Cell status.** Written by `GetCell` and `GetCellInfo`, and in brackets after each value by [`GetForm`](03-data-form.md). It's a comma-separated list of any of: `Invalid`, `No data`, `Parent level input`, `Derived`, `Supports journals`, `Has line items`, `Supports line items`, `Read only`, `Has text`. (An adjustment member with journal transactions is also reported as `Has text`.)

**Calculation status** in `GetCell` and `GetCellInfo`: a comma-separated list of any of `OK`, `OK but the system has changed`, `No data`, `Locked`, `Needs calculation`, `Needs translation`, `Needs consolidation`.

**Cell security class** in `GetCellInfo`: `All`, `Read only` or `None`.

> [!WARNING]
> JHAT mixes up `Read only` and `None` for cell security. A cell you can read but not write is reported as `None`, and a cell you can't read is reported as `Read only`. `All` is correct.
