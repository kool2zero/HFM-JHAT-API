# JHAT Commands: Data Form

[← Back to index](../README.md)

#### Overview

These commands are related to the Data Form

#### Commands

<details id="bkmrk-getform-get-the-data"><summary>GetForm</summary>

<p class="callout info">Get the data form and save it to an output file in HTML format.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--13" style="height: 392.297px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Path in document manager</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path in Document Manager where Form is located</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Form Name</td><td class="align-center" style="width: 18.1326%; height: 29.7969px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Form Name to Get</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Output file

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Use the user POV</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Use the user POV

- `true`
    - Use POV set by `SetPOV`
- `false`
    - Use the POV defined in the form

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress Row Header Repeats</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Suppress Row Header Repeats

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress NoData Rows</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Suppress NoData Rows

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress Invalid Rows</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Suppress Invalid Rows

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress Column Header Repeats</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Suppress Column Header Repeats

- `true`
- `false`

</td></tr><tr style="height: 49.5938px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress NoData Column</td><td class="align-center" style="width: 18.1326%; height: 49.5938px;">✓</td><td style="width: 50.203%; height: 49.5938px;">Suppress NoData Column

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress Invalid Column</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Suppress Invalid Column

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
GetForm("Path in the document manager", "Form name", "Out file", "Use the user POV", "Supress row header repeats", "Supress NoData Rows", "Supress Zero Rows","Supress Invalid Rows", "Supress column header repeats", "Supress No data Columns", "Supress zero columns", "Supress Invalid Columns");
```

</details><details id="bkmrk-executeondemandrule-"><summary>ExecuteOnDemandRule</summary>

<p class="callout info">Execute an On Demand Rule based on Set POV</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Rule Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">On Demand Rule to Execute

- Must be a valid Rule
- Uses POV set by `SetPOV`

</td></tr></tbody></table>

**Example**

```dart
ExecuteOnDemandRule("RuleName");
```

</details>
