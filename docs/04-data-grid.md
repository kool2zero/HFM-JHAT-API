# JHAT Commands: Data Grid

[← Back to index](../README.md)

#### Overview

These JHAT Commands relate to the data grid.

> Data grids are a powerful feature in HFM (Hyperion Financial Management) that allow users to view and manipulate financial data in a flexible and dynamic manner. Essentially, a data grid is a spreadsheet-like interface that displays financial data organized by dimensions such as time, accounts, entities, and scenarios.
> 
> With data grids in HFM, users can perform a range of tasks such as entering, editing, and aggregating data, performing calculations and consolidations, and exporting data for analysis or reporting. They can also customize the appearance and behavior of the data grid by selecting columns, filtering data, and applying formatting options.
> 
> Data grids in HFM offer several benefits for financial reporting and analysis. They provide a highly interactive and user-friendly interface for accessing and manipulating financial data, which can improve efficiency and accuracy in financial reporting processes. They also allow for real-time data analysis and scenario planning, which can help organizations to make informed financial decisions and respond quickly to changes in the business environment.
> 
> Overall, data grids are an essential tool for any organization using HFM for financial management and reporting, providing a powerful and flexible way to manage financial data and support effective decision-making.

#### Commands

Unless noted otherwise, these commands work on the POV set by `SetPOV` / `SetPOVExtDim` and need an open application. A command that needs a POV fails with "SetPOV is not called before calling Set Cell…" if none has been set.

- **Output files** are written in UTF-8 and overwritten if they exist.
- **true/false parameters:** `true` (any case) means true. Any other value means false.
- **Lists** (as in "StringList number") are the numbered lists built with `AddItemToList` on the [Extracts](07-extracts.md) page.

##### Defining and reading grids

<details id="bkmrk-DefineGrid-"><summary>DefineGrid</summary>

<p class="callout info">Defines a data grid with one row dimension and one column dimension. All other dimensions come from the current POV. The grid is used by `GetGrid`, `GetGridExtDim` and `GetCellsExtDim`. Defining a new grid removes the previous one.</p>

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

```dart
DefineGrid("Account","[Hierarchy]","","Period","[Hierarchy]","");
DefineGrid("Entity","[Base]","TotalGroup","Period","[Base]","");
```

</details><details id="bkmrk-DefineGridExtDim-"><summary>DefineGridExtDim / DefineDataRetrieval</summary>

<p class="callout info">Defines a data grid that can have several row and column dimensions. `DefineGridExtDim` and `DefineDataRetrieval` are identical. All other dimensions come from the current POV. Defining a new grid removes the previous one.</p>

**Input**

Each parameter is one or more `Dimension{list}` or `Dimension{TopMember.list}` entries joined with `.`. The dimension can be a name or short name (`A`, `E`, `C1`…). **Each dimension must have a `{…}` part**. A bare dimension name like `"Account"` makes the command fail.

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Row Dimension(s) | ✓ | e.g. `A{[Base]}` or `E{TotalGroup.[Descendants]}.A{[Base]}` |
| Column Dimension(s) | ✓ | e.g. `P{[Base]}` |

An unknown dimension fails with "Invalid dimension short name".

**Example**

```dart
DefineGridExtDim("A{[Base]}","P{[Base]}");
DefineDataRetrieval("E{TotalGroup.[Descendants]}.A{NetIncome.[Descendants]}","P{[Base]}");
```

</details><details id="bkmrk-GetGrid-"><summary>GetGrid</summary>

<p class="callout info">Writes rows of the grid defined by `DefineGrid` / `DefineGridExtDim` to a semicolon-separated file. Column headers come first, then one line per row with its row headers followed by the cell values. JHAT remembers the current row between calls, so you can page through a grid with `DOWN`.</p>

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
| `STATUS` or `CALCSTATUS` | Calculation status text |
| `PROCESS` | Process management status text |
| `DROID` | Raw numeric cell status |
| `STATUSHEX` | Raw cell status in hexadecimal |
| `NOTHING` | No grid. The file only says how many rows the grid has. |

**Example**

```dart
DefineGrid("Account","[Base]","","Period","[Base]","");
GetGrid("C:\Output\grid.txt","VALUE","ALL","0");
```

</details><details id="bkmrk-GetGridExtDim-"><summary>GetGridExtDim / GetCellsExtDim</summary>

<p class="callout info">Writes the whole grid defined by `DefineGrid` / `DefineGridExtDim` to a semicolon-separated file, in the same layout as `GetGrid`. `GetGridExtDim` and `GetCellsExtDim` are identical.</p>

<p class="callout warning">The extract types differ from `GetGrid`. Here `STATUS` gives the raw numeric cell status, and `CALCSTATUS` gives the calculation status text.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | Local file to write |
| Type of Extract | ✓ | `VALUE`, `CALCSTATUS` (calc status text), `STATUS` or `DROID` (numeric status), `STATUSHEX`, `PROCESS` or `NOTHING` |

**Example**

```dart
GetGridExtDim("C:\Output\grid.txt","VALUE");
```

</details>

##### Cell data

<details id="bkmrk-SetCell-"><summary>SetCell</summary>

<p class="callout info">Sets the value of the cell at the current POV. The cell must be an input cell.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Value | ✓ | Value to store |

**Example**

```dart
SetCell("999999");
```

</details><details id="bkmrk-GetCell-"><summary>GetCell</summary>

<p class="callout info">Writes the cell at the current POV to the log: displayed data, full-resolution data, stored data, calculation status and cell status.</p>

**Input**

None

**Example**

```dart
GetCell();
```

</details><details id="bkmrk-GetCellInfo-"><summary>GetCellInfo</summary>

<p class="callout info">Writes detailed information about the cell at the current POV to the log:</p>

- **POV:** process unit, POV detail, view, phase and account calculation attribute
- **Status:** calculation status, process level, cell status and security class
- **Data:** scale, number of decimals, and displayed, full-resolution and stored data

**Input**

None

**Example**

```dart
GetCellInfo();
```

</details><details id="bkmrk-GetCellHistory-"><summary>GetCellHistory</summary>

<p class="callout info">Writes the change history of the cell at the current POV to a file: user, server, activity, time modified and value for each change.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```dart
GetCellHistory("C:\Output\history.txt");
```

</details><details id="bkmrk-GetCellEntityDetails-"><summary>GetCellEntityDetails</summary>

<p class="callout info">Writes the Entity Details report for the current POV to a colon-separated file.</p>

The report includes:

- **Rows:** base details, source and destination transactions, line item details, and journals
- **Columns:** debit, credit, ID and remarks, broken out by Entity, Account, ICP and each custom dimension

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```dart
GetCellEntityDetails("C:\Output\entitydetails.txt");
```

</details><details id="bkmrk-GetSourceTransactions-"><summary>GetSourceTransactions</summary>

<p class="callout info">Writes the source transactions for the cell at the current POV (statutory applications) to a semicolon-separated file. Columns: `Current Entity;Parent;Source Data;Destination Data;Factor;Nature`.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```dart
GetSourceTransactions("C:\Output\source.txt");
```

</details><details id="bkmrk-GetDestinationTransactions-"><summary>GetDestinationTransactions</summary>

<p class="callout info">Writes the destination transactions for the cell at the current POV (statutory applications) to a semicolon-separated file, in the same format as `GetSourceTransactions`.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```dart
GetDestinationTransactions("C:\Output\destination.txt");
```

</details><details id="bkmrk-GetLineItemDetail-"><summary>GetLineItemDetail</summary>

<p class="callout info">Writes the line item detail for the cell at the current POV to a semicolon-separated file (`Description;Line Item Data`). Line item detail only applies to scenarios and accounts set up to use it, and only for the Entity Currency Value member.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```dart
GetLineItemDetail("C:\Output\lineitems.txt");
```

</details><details id="bkmrk-SetLineItemDetail-"><summary>SetLineItemDetail</summary>

<p class="callout info">Sets one line item on each of several cells. The POVs and values come from two string lists built with `AddItemToList` (dimension `""`). The lists must have the same number of items. The first POV gets the first value, and so on. Every line item gets the same description.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| POV List Number | ✓ | Number of the string list holding the POV strings |
| Values List Number | ✓ | Number of the string list holding the values |
| Description | ✓ | Line item description |

**Example**

```dart
InitLists();
AddItemToList("1","","S#Actual.Y#2023.P#Jan.W#YTD.E#Entity1.V#<Entity Currency>.A#Cash.I#[ICP None].C1#[None].C2#[None].C3#[None].C4#[None]");
AddItemToList("2","","1000");
SetLineItemDetail("1","2","Opening balance");
```

</details>

##### Cell text and attachments

<details id="bkmrk-SetCellTextEnhanced-"><summary>SetCellTextEnhanced</summary>

<p class="callout info">Sets the cell text for a cell text label on the cell at the current POV.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label, e.g. `[Default]` |
| Text | ✓ | Text to store |

**Example**

```dart
SetCellTextEnhanced("[Default]","Reviewed by Finance");
```

</details><details id="bkmrk-deleteCellTextEnhanced-"><summary>deleteCellTextEnhanced</summary>

<p class="callout info">Deletes the text, the attachments, or both, for a cell text label on the cell at the current POV.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label |
| What to Delete | ✓ | `All`, `Text` or `Attachments` |

**Example**

```dart
deleteCellTextEnhanced("[Default]","All");
```

</details><details id="bkmrk-DetachCellDocument-"><summary>DetachCellDocument</summary>

<p class="callout info">Removes one attached document from a cell text label on the cell at the current POV. The text and other attachments are kept.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label |
| File Name | ✓ | Name of the attached document to remove (matched ignoring case) |

**Example**

```dart
DetachCellDocument("[Default]","Support.pdf");
```

</details><details id="bkmrk-AttachCellDocumentEnhanced-"><summary>AttachCellDocumentEnhanced / AttachCellDocument</summary>

<p class="callout info">Attaches a document that is already in Document Manager to the cell at the current POV. Existing text and attachments for the label are kept. `AttachCellDocument` always uses the `[Default]` label.</p>

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

```dart
AttachCellDocumentEnhanced("[Default]","Support.pdf","\Documents\Support");
AttachCellDocument("Support.pdf","\Documents\Support");
```

</details><details id="bkmrk-GetCellTextAttachmentsEnhanced-"><summary>GetCellTextAttachmentsEnhanced</summary>

<p class="callout info">Lists the attached documents on the cell at the current POV. Each is written to the file and the log as `Label <label> attachment is : <file>`.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label, or `All` for every label |
| Output File Path | ✓ | Local file to write |

**Example**

```dart
GetCellTextAttachmentsEnhanced("All","C:\Output\attachments.txt");
```

</details><details id="bkmrk-GetCellTextEnhanced-"><summary>GetCellTextEnhanced</summary>

<p class="callout info">Gets the cell text on the cell at the current POV. Each label is written to the file and the log as `Label <label> is : <text>`.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cell Text Label | ✓ | Cell text label, or `All` for every label |
| Output File Path | ✓ | Local file to write |

**Example**

```dart
GetCellTextEnhanced("All","C:\Output\celltext.txt");
```

</details>

##### Calculation and consolidation

<details id="bkmrk-Lock-"><summary>Lock</summary>

<p class="callout info">Runs the [Lock](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s09.html) command on the current POV. The command fails if the server returns an error code.</p>

**Input**

None

**Example**

```dart
Lock();
```

</details><details id="bkmrk-Unlock-"><summary>Unlock</summary>

<p class="callout info">Runs the [Unlock](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s10.html) command on the current POV. The command fails if the server returns an error code.</p>

**Input**

None

**Example**

```dart
Unlock();
```

</details><details id="bkmrk-Translate-"><summary>Translate</summary>

<p class="callout info">Runs the [Translate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s05.html) command on the current POV. The command fails if the server returns an error code.</p>

**Input**

None

**Example**

```dart
Translate();
```

</details><details id="bkmrk-Allocate-"><summary>Allocate</summary>

<p class="callout info">Runs the [Allocate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s07.html) command on the current POV. The command fails if the server returns an error code.</p>

**Input**

None

**Example**

```dart
Allocate();
```

</details><details id="bkmrk-Consolidate-"><summary>Consolidate</summary>

<p class="callout info">Runs the [Consolidate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s07.html) command on the current POV, and optionally on extra POVs from a string list. JHAT waits for every consolidation task to finish (see <a href="00-automation-with-jhat.md#long-running-tasks">long-running tasks</a>). The command fails if the last task doesn't complete.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Type | ✓ | `Impacted`: Consolidate. `AllWithData`: Consolidate All with Data. `All`: Consolidate All. `EntityOnly`: Calculate Contribution. `ForceEntityOnly`: Force Calculate Contribution. Any other value fails with "Invalid arguments value for consolidation." |
| POV List Number | | Number of a string list (built with `AddItemToList`, dimension `""`) of extra POV strings to consolidate along with the current POV |

**Example**

```dart
Consolidate("Impacted");
Consolidate("AllWithData","3");
```

</details><details id="bkmrk-ChartLogic-"><summary>ChartLogic</summary>

<p class="callout info">Runs the [Calculate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s04.html) command on the current POV. Unlike `Consolidate`, it doesn't wait for a running task. The command fails if the server returns an error code.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Force | ✓ | `true`: Force Calculate. Any other value: Calculate. |

**Example**

```dart
ChartLogic("true");
```

</details><details id="bkmrk-LockICEntity-"><summary>LockICEntity</summary>

<p class="callout warning">**Does nothing.** The command's code is empty in this version of JHAT, so it doesn't lock anything.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Entity | ✓ | |

**Example**

```dart
LockICEntity("Actual","2023","Dec","Entity1");
```

</details><details id="bkmrk-UnlockICEntity-"><summary>UnlockICEntity</summary>

<p class="callout warning">**Does nothing.** The command's code is empty in this version of JHAT, so it doesn't unlock anything.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Year | ✓ | |
| Period | ✓ | |
| Entity | ✓ | |

**Example**

```dart
UnlockICEntity("Actual","2023","Dec","Entity1");
```

</details>

##### Process control

The process control commands don't use `DefineGrid`. They build their own grid from the Scenario, Year, Period and Entity in the current POV:

- **Entity:** can be a single member or a member list in the form `{TopMember.[List]}` or `{[List]}`.
- **Rows:** entities.
- **Accounts:** the application's validation accounts.
- **Value:** `<Entity Curr Total>` unless a Data View parameter changes it.
- **Grid replacement:** each command replaces any grid from `DefineGrid`.

**Data View** values (any case): `Translation` → `<Parent Curr Total>`, `Contribution` → `[Contribution Total]`, anything else → `<Entity Curr Total>`.

<details id="bkmrk-GetProcessControlGrid-"><summary>GetProcessControlGrid</summary>

<p class="callout info">Writes the process control grid to a file. The parameters and output are the same as <code>GetGrid</code>.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | Local file to write |
| Type of Extract | ✓ | As for `GetGrid`. `PROCESS` gives the process management status. |
| Direction | ✓ | `ALL`, `DOWN` or `UP` |
| Number of Rows | ✓ | Number of rows for `UP` / `DOWN` |

**Example**

```dart
SetPOV("Actual","2023","Dec","YTD","{TotalGroup.[Descendants]}","<Entity Currency>","[None]","[ICP None]","[None]","[None]","[None]","[None]");
GetProcessControlGrid("C:\Output\pcgrid.txt","PROCESS","ALL","0");
```

</details><details id="bkmrk-FilterProcessControlGrid-"><summary>FilterProcessControlGrid</summary>

<p class="callout info">Writes the process control grid to a file, filtered by phase, review level, pass/fail and calculation status. Text values are matched ignoring case. A filter value that isn't recognized is ignored.</p>

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

```dart
FilterProcessControlGrid("C:\Output\pcgrid.txt","PROCESS","ALL","0","All","Level 1","And Above","Pass and Fail","All","","Ascending");
```

</details><details id="bkmrk-DisplayProcessControlGrid-"><summary>DisplayProcessControlGrid</summary>

<p class="callout info">Writes the process control grid to a file, with display options that match the Process Control page.</p>

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

```dart
DisplayProcessControlGrid("C:\Output\pcgrid.txt","PROCESS","ALL","0","","List","Both","N","Single","Review,Pass,Validation","Calc,Journal","All");
```

</details><details id="bkmrk-GetReviewLevelSummary-"><summary>GetReviewLevelSummary</summary>

<p class="callout info">Writes the number of entities at each review level to a file. One `Level= count` line per level (Not Started, First Pass, Review Level 1–10, Submitted, Approved, Published), followed by `Entities Displayed= total`.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |

**Example**

```dart
GetReviewLevelSummary("C:\Output\reviewlevels.txt");
```

</details><details id="bkmrk-GetCalcStatusSummary-"><summary>GetCalcStatusSummary</summary>

<p class="callout info">Writes the number of entities at each calculation status to a semicolon-separated file. The groups are OK (with totals), No Data, Impacted, and Locked.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to write |
| Data View | | See Data View values above |

**Example**

```dart
GetCalcStatusSummary("C:\Output\calcstatus.txt","Translation");
```

</details><details id="bkmrk-GetValidationAccountInfo-"><summary>GetValidationAccountInfo</summary>

<p class="callout info">Writes the phase submission validation grid for a POV and phase to a comma-separated file. It doesn't use the current POV.</p>

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

```dart
GetValidationAccountInfo("S#Actual.Y#2023.P#Dec.E#Entity1","1","","true","true","false","C:\Output\validation.csv");
```

</details><details id="bkmrk-GetCellStatus-"><summary>GetCellStatus</summary>

<p class="callout danger">**Don't use.** This is leftover test code. It ignores the current POV, reads a hardcoded POV from a sample application (`S#Actual.Y#2011.P#Quarter4…E#GROUP.CORP_OPS…`) 20,000 times, and writes nothing.</p>

**Input**

None

**Example**

```dart
GetCellStatus();
```

</details>
