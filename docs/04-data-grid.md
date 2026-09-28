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

<details id="bkmrk-DefineGrid-"><summary>DefineGrid</summary>

<p class="callout info">The define Grid Command will set up a grid with a POV that can be used in later commands.</p>

<p class="callout info">Should call `SetPOV` prior to running this function to set up the rest of the POV.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Row Dimension</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Row Dimension</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Row List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Row List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Row Top Member</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Row Top Member</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Column Dimension</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Column Dimension</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Column List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Column List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Column Top Member</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Column Top Member</td></tr></tbody></table>

**Example**

```dart
DefineGrid("Row Dimension"," Row List"," Row Top Member"," Column Dimension"," Column List"," Column Top Member");
DefineGrid("Account","[Hierarchy]","","Period","[Hierarchy]","");
```

</details><details id="bkmrk-DefineGridExtDim-"><summary>DefineGridExtDim / DefineDataRetrieval</summary>

<p class="callout info">Defines a Grid by passing in Rows and Dimensions. The grid can be used in later commands.</p>

<p class="callout info">Both commands appear to call the same API codes.</p>

<p class="callout info">Should call `SetPOV` prior to running this function to set up the rest of the POV.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Row Dimensions</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Row Dimensions</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Column Dimensions</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Column Dimensions</td></tr></tbody></table>

**Example**

```dart
DefineGridExtDim("Account","ICP");
DefineDataRetrieval("Account","ICP");

```

</details><details id="bkmrk-GetGrid-"><summary>GetGrid</summary>

<p class="callout info">Extract a previously defined grid to a flat file.</p>

<p class="callout warning">Must run `SetPOV` and `DefineGrid` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Location to store the output file</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type of Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type of Extract

- `VALUE` - Values in Grid
- `STATUS` - Calculation Status
- `NOTHING` - Returns how many rows would be retrieved.
- `DROID` - Unknown
- `CALCSTATUS` - Calculation Status
- `PROCESS` - Process Level
- `STATUSHEX` - Cell Status in Hex

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Direction to Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Direction of Extract

- `UP` - If number of rows to extract is set, it will start from the top.
- `DOWN` - If number of rows to extract is set, it will start from the bottom.
- `ALL` - Will start from the top.

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Number of Rows To Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Number of Rows To Extract</td></tr></tbody></table>

**Example**

```dart
GetGrid("Output File"," Type of Extract"," Direction to Extract"," Number of Rows To Extract");
```

</details><details id="bkmrk-GetGridExtDim-"><summary>GetGridExtDim / GetCellsExtDim</summary>

<p class="callout info">Extract a previously defined grid to a flat file.</p>

<p class="callout info">Both commands call the same Java code.</p>

<p class="callout warning">Must run `SetPOV` and `DefineGrid` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Location to store the output file</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type of Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type of Extract

- `VALUE` - Values in Grid
- `STATUS` - Calculation Status
- `NOTHING` - Returns how many rows would be retrieved.
- `DROID` - Unknown
- `CALCSTATUS` - Calculation Status
- `PROCESS` - Process Level
- `STATUSHEX` - Cell Status in Hex

</td></tr></tbody></table>

**Example**

```dart
GetGridExtDim("<Output File Path>", "<Type of Extract>");
```

</details><details id="bkmrk-SetCell-"><summary>SetCell</summary>

<p class="callout info">Sets the value of a Cell based on a POV. Cell will have to be inputable.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Value</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Value</td></tr></tbody></table>

**Example**

```dart
SetCell("999999");
```

</details><details id="bkmrk-GetCell-"><summary>GetCell</summary>

<p class="callout info">Gets the value of a Cell based on a POV. </p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
GetCell();
```

Returns the following information to the log:

- Displayed Data
- Full Resolution data
- Stored data
- Calculation status
- Cell status

</details><details id="bkmrk-GetCellInfo-"><summary>GetCellInfo</summary>

<p class="callout info">Gets the Cell Info and Outputs it to the log.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
GetCellInfo();
```

Returns the following information to the log:

```sql
---- Point of view ----
Process Unit
POV Detail
View
Phase
Account Calculation Attribute
---- Status ----
Calculation status
Process Level
Cell status
Cell security class
---- Data ----
Scale
Num Decimals
Displayed Data
Full Resolution data
Stored data
```

</details><details id="bkmrk-Lock-"><summary>Lock</summary>

<p class="callout info">Runs the [Lock](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s09.html) command on the selected POV</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
Lock();
```

</details><details id="bkmrk-Unlock-"><summary>Unlock</summary>

<p class="callout info">Runs the [Unlock](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s10.html) command on the selected POV</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
Unlock();
```

</details><details id="bkmrk-Translate-"><summary>Translate</summary>

<p class="callout info">Runs the [Translate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s05.html) command on the selected POV</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
Translate();
```

</details><details id="bkmrk-Allocate-"><summary>Allocate</summary>

<p class="callout info">Runs the [Allocate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s07.html) command on the selected POV</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
Allocate();
```

</details><details id="bkmrk-consolidate-runs-the"><summary>Consolidate</summary>

<p class="callout info">Runs the [Consolidate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s07.html) command based on the `SetPOV`.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 454.484px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 19.0798%; height: 29.7969px;">**Parameter**</td><td style="width: 15.875%; height: 29.7969px;">**Mandatory**</td><td style="width: 64.9098%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Consolidation Type</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">The type of consolidation to run:

- `Impacted`
- `AllWithData`
- `All`
- `EntityOnly` (Calculate Contribution)
- `ForceEntityOnly` (Force Calculate Contribution)

</td></tr></tbody></table>

**Example**

```dart
Consolidate("Impacted");
```

</details><details id="bkmrk-ChartLogic-"><summary>ChartLogic</summary>

<p class="callout info">Runs the [Calculate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s04.html) command based on the `SetPOV`.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Force Calculate</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Force Calculate

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ChartLogic("true");
```

</details><details id="bkmrk-SetCellTextEnhanced-"><summary>SetCellTextEnhanced</summary>

<p class="callout info">Sets the cell text for an intersection.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--6" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Text for the label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Text for the label</td></tr></tbody></table>

**Example**

```dart
SetCellTextEnhanced("Cell label"," Text for the label");
```

</details><details id="bkmrk-deleteCellTextEnhanced-"><summary>deleteCellTextEnhanced</summary>

<p class="callout info">Deletes Cell Text for an Intersection</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--7" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">What to Delete</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">What to Delete:

- `All`
- `Text`
- `Attachments`

</td></tr></tbody></table>

**Example**

```dart
deleteCellTextEnhanced("Cell label"," All or Text or Attachments;");
```

</details><details id="bkmrk-DetachCellDocument-"><summary>DetachCellDocument</summary>

<p class="callout info">Removes a document from the Cell</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--8" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Name</td></tr></tbody></table>

**Example**

```dart
DetachCellDocument("Cell Text Label","File Name");
```

</details><details id="bkmrk-AttachCellDocumentEnhanced-"><summary>AttachCellDocumentEnhanced \\ AttachCellDocument</summary>

<p class="callout info">Attach a document to the Cell</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--9" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 37.8843%; height: 29.7969px;">**Parameter**</td><td style="width: 11.9127%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">File Name</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Name</td></tr><tr><td style="width: 37.8843%;">Full Directory from Manage Documents</td><td class="align-center" style="width: 11.9127%;">✓</td><td style="width: 50.203%;">Full Directory from Manage Documents</td></tr></tbody></table>

**Example**

```dart
AttachCellDocumentEnhanced("<Cell Text Label>", "<File name>", "<Full Directory from Manage Documents>");
AttachCellDocument("<Cell Text Label>", "<File name with Full Directory>");
```

</details><details id="bkmrk-GetCellTextAttachmentsEnhanced-"><summary>GetCellTextAttachmentsEnhanced</summary>

<p class="callout info">Get Cell Text Attachments</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--10" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 37.8843%; height: 29.7969px;">**Parameter**</td><td style="width: 11.9127%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">Full Path to File Name</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Full Path to File Name</td></tr></tbody></table>

**Example**

```dart
GetCellTextAttachmentsEnhanced("<Cell Text Label or All>", "<Full Path to File Name>");
```

</details><details id="bkmrk-GetCellTextEnhanced-"><summary>GetCellTextEnhanced</summary>

<p class="callout info">Get Cell Text Attachments</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--11" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 37.8843%; height: 29.7969px;">**Parameter**</td><td style="width: 11.9127%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">Full Path to File Name</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Full Path to File Name</td></tr></tbody></table>

**Example**

```dart
GetCellTextEnhanced("<Cell Text Label or All>", "<Full Path to File Name>");
```

</details><details id="bkmrk-LockICEntity-"><summary>LockICEntity</summary>

<p class="callout info">Locks an entity for a given scenario, year, and period.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--12" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity</td></tr></tbody></table>

**Example**

```dart
LockICEntity("Scenario"," Year"," Period"," Entity");
```

</details><details id="bkmrk-UnlockICEntity-"><summary>UnlockICEntity</summary>

<p class="callout info">Unlocks an entity for a given scenario, year, and period.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--13" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity</td></tr></tbody></table>

**Example**

```dart
UnlockICEntity("Scenario"," Year"," Period"," Entity");
```

</details><details id="bkmrk-GetCellHistory-"><summary>GetCellHistory</summary>

<p class="callout info">Gets the history of an intersection.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--15" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output file path</td></tr></tbody></table>

**Example**

```dart
GetCellHistory("output file path");
```

</details><details id="bkmrk-GetCellEntityDetails-"><summary>GetCellEntityDetails</summary>

<p class="callout info">Gets the Cell Entity Details</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--16" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output file path</td></tr></tbody></table>

**Example**

```dart
GetCellEntityDetails("output file path");
```

</details><details id="bkmrk-GetProcessControlGrid-"><summary>GetProcessControlGrid</summary>

<p class="callout info">Output the process control grid to a file.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--17" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File to output the Grid to</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;"> Type of Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type of Extract

- `VALUE` - Values in Grid
- `STATUS` - Calculation Status
- `NOTHING` - Returns how many rows would be retrieved.
- `DROID` - Unknown
- `CALCSTATUS` - Calculation Status
- `PROCESS` - Process Level
- `STATUSHEX` - Cell Status in Hex

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Direction to Extract

</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Direction of Extract

- `UP` - If number of rows to extract is set, it will start from the top.
- `DOWN` - If number of rows to extract is set, it will start from the bottom.
- `ALL` - Will start from the top.

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Number of Rows To Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Number of Rows To Extract</td></tr></tbody></table>

**Example**

```dart
GetProcessControlGrid("Output File"," Type of Extract"," Direction to Extract"," Number of Rows To Extract");
```

</details><details id="bkmrk-GetSourceTransactions-"><summary>GetSourceTransactions</summary>

<p class="callout info">Returns information on source transactions for a cell in a statutory application.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

The following information is returned:

- Header information, such as the dimension members that define the cell, the current username, the cell’s data, and so on. This information is returned in two arrays that have a one-to-one correspondence; one array contains labels for the header information, the other contains the values that correspond to the labels.
- Detailed information on the transactions, such as the dimension members and data for the transactions. This information is contained in several arrays; the arrays contain one item per transaction, and have a one-to-one correspondence.
- The sums of the cell’s source and destination transaction amounts.

**Input**

<table border="1" id="bkmrk-parameter-mandatory--18" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;"> Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;"> Output File Path </td></tr></tbody></table>

**Example**

```dart
GetSourceTransactions("Output File Path");
```

</details><details id="bkmrk-GetDestinationTransactions-"><summary>GetDestinationTransactions</summary>

<p class="callout info">Returns information on destination transactions for a cell in a statutory application.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

The following information is returned:

- Header information, such as the dimension members that define the cell, the current username, the cell’s data, and so on. This information is returned in two arrays that have a one-to-one correspondence; one array contains labels for the header information, the other contains the values that correspond to the labels.
- Detailed information on the transactions, such as the dimension members and data for the transactions. This information is contained in several arrays; the arrays contain one item per transaction and have a one-to-one correspondence.
- The sums of the cell’s source and destination transaction amounts.

**Input**

<table border="1" id="bkmrk-parameter-mandatory--19" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;"> Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;"> Output File Path </td></tr></tbody></table>

**Example**

```dart
GetDestinationTransactions("Output File Path");
```

</details><details id="bkmrk-GetLineItemDetail-"><summary>GetLineItemDetail</summary>

<p class="callout info">In the Entity Detail Report, the option to display line item detail is only applicable for the scenario and account defined to use line item detail. Line item detail information is available only for the Entity Currency Value dimension.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--20" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr></tbody></table>

**Example**

```dart
GetLineItemDetail("Output File Path");
```

</details><details id="bkmrk-SetLineItemDetail-"><summary>SetLineItemDetail</summary>

<p class="callout info">Line item detail enables you to collect detailed information about accounts. This function sets the detail</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--21" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV Item List Number</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV Item List Number</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Cell Values Item List Number</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell Values Item List Number</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr></tbody></table>

**Example**

```dart
SetLineItemDetail("POV ITem List Number","Cell Values Item List Number","Description");
```

</details><details id="bkmrk-FilterProcessControlGrid-"><summary>FilterProcessControlGrid</summary>

<p class="callout info">Export Process Control Grid based on a Filter</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--22" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type of Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type of Extract

- `VALUE` - Values in Grid
- `STATUS` - Calculation Status
- `NOTHING` - Returns how many rows would be retrieved.
- `DROID` - Unknown
- `CALCSTATUS` - Calculation Status
- `PROCESS` - Process Level
- `STATUSHEX` - Cell Status in Hex

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Direction to Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Direction of Extract

- `UP` - If number of rows to extract is set, it will start from the top.
- `DOWN` - If number of rows to extract is set, it will start from the bottom.
- `ALL` - Will start from the top.

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Number of Rows To Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Number of Rows To Extract</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Phase</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phase to filter on

- All
- 1
- 2
- 3
- etc

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Review Level</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Review Level to filter on

- `ALL`
- `NOT STARTED`
- `FIRST PASS`
- `LEVEL 1`
- `LEVEL 2`
- `LEVEL 3`
- `LEVEL 4`
- `LEVEL 5`
- `LEVEL 6`
- `LEVEL 7`
- `LEVEL 8`
- `LEVEL 9`
- `LEVEL 10`
- `SUBMITTED`
- `APPROVED`
- `PUBLISHED`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Range</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Range

- `ALL`
- `AND ABOVE`
- `AND BELOW`
- `ONLY`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Show Pass/Fail</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Show Pass/Fail

- `PASS AND FAIL`
- `PASS ONLY`
- `FAIL ONLY`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Status</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Status

- `NODATA`
- `OK`
- `OK SC`
- `CH`
- `CN`
- `TR`
- `OK ND`
- `CH ND`
- `CN ND`
- `TR ND`
- `LOCKED`
- `ALL`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Data View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data View

- `Value`
- `Translation`
- `Contribution`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">SORT</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">SORT

- `Ascending`
- `Descending`

</td></tr></tbody></table>

**Example**

```dart
FilterProcessControlGrid("Output File Name"," Type of Extract"," Direction to Extract"," Number of Rows To Extract"," Phase"," Review Level","Range"," Show Pass/Fail"," Status"," Data View"," SORT");
```

</details><details id="bkmrk-DisplayProcessControlGrid-"><summary>DisplayProcessControlGrid</summary>

<p class="callout info">Output the Process Control Grid</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--23" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type of Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type of Extract

- `VALUE` - Values in Grid
- `STATUS` - Calculation Status
- `NOTHING` - Returns how many rows would be retrieved.
- `DROID` - Unknown
- `CALCSTATUS` - Calculation Status
- `PROCESS` - Process Level
- `STATUSHEX` - Cell Status in Hex

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Direction to Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Direction of Extract

- `UP` - If number of rows to extract is set, it will start from the top.
- `DOWN` - If number of rows to extract is set, it will start from the bottom.
- `ALL` - Will start from the top.

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Number of Rows To Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Number of Rows To Extract</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Data View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data View

- `Value`
- `Translation`
- `Contribution`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Style</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Style

- `Tree`
- `<Blank>` (Default)

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity View

- `Label`
- `Description`
- `Both`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Active</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Active

- `Y`
- `N`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period View

- `All`
- <span style="font-family: Lucida Console, DejaVu Sans Mono, Ubuntu Mono, Monaco, monospace;"><span style="font-size: 11.76px; white-space: pre-wrap; background-color: rgb(180, 215, 255);">Single</span></span>

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Review Level Columns</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Review Level Columns.

<p class="callout info">Multiple selections can be comma delimited.</p>

- `REVIEW`
- `PASS`
- `VALIDATION`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Status Columns</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Status Columns

- `CALC`
- `JOURNAL`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">PhasesALL | Phase Number</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phases

<p class="callout info">Multiple selections can be comma delimited.</p>

- `ALL`
- `1`
- `2`
- `3`

</td></tr></tbody></table>

**Example**

```dart
DisplayProcessControlGrid("File Name"," Type of Extract"," Direction to Extract"," Number of Rows To Extract"," Data View"," Style"," Entity View"," ActiveY|N"," Period View "," Review Level Columns"," Status Columns"," PhasesALL | Phase Number");
```

</details><details id="bkmrk-GetReviewLevelSummary-"><summary>GetReviewLevelSummary</summary>

<p class="callout info">Output the Review Level Summary to a file.</p>

<p class="callout warning">Must run `SetPOV` and `DefineGrid` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--24" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Name</td></tr></tbody></table>

**Example**

```dart
GetReviewLevelSummary("File Name");
```

</details><details id="bkmrk-GetCalcStatusSummary-"><summary>GetCalcStatusSummary</summary>

<p class="callout info">Output Calculation Status Summary which shows the number of entities at each status.</p>

<p class="callout warning">Must run `SetPOV` and `DefineGrid` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--25" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">DATA VIEW</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data View

- `Value`
- `Translation`
- `Contribution`

</td></tr></tbody></table>

**Example**

```dart
GetCalcStatusSummary("File Name","DATA VIEW");
```

</details><details id="bkmrk-GetValidationAccountInfo-"><summary>GetValidationAccountInfo</summary>

<p class="callout info">Get information on Validation Account</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--26" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Point of View</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Phase</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phase Number</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Data View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data View

- `Value`
- `Translation`
- `Contribution`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Zero</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Zero

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress NODATA</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress NODATA

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Formatted Data</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Formatted Data

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">OUTPUT file path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">OUTPUT file path</td></tr></tbody></table>

**Example**

```dart
GetValidationAccountInfo("POV"," PHASE NO."," DATA VIEW"," Suppress ZEROs"," Suppress NODATA"," Formatted Data"," OUTPUT file path");
```

</details><details id="bkmrk-GetCellStatus-"><summary>GetCellStatus</summary>

<p class="callout info">Get the Cell Status</p>

**Input**

None

**Example**

```dart
GetCellStatus("");
```

</details>
