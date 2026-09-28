# JHAT Commands: Miscellaneous Actions

[← Back to index](../README.md)

#### Overview

These JHAT Commands are related to miscellaneous actions

#### Commands

<details id="bkmrk-CalculateOwnership-"><summary>CalculateOwnership</summary>

<p class="callout info">Calculate Ownership</p>

<p class="callout warning">Must add periods to list.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period List

- `All`
- Valid Period List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Parent</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Parent</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Shares Calculation Control?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Shares Calculation Control?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Shares Calculation Method?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Shares Calculation Method?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Shares Calculation Ownership?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Shares Calculation Ownership?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Shares Percent Control?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Shares Percent Control?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Shared Direct Ownership</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Shared Direct Ownership?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Mode</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Mode

- `Current Entity`
- `Descendants`
- `All Entities`

</td></tr></tbody></table>

**Example**

```dart
CalculateOwnership("Scenario","2001","1","Parent","TRUE","TRUE","TRUE","TRUE"," TRUE"," All Entities");
```

</details><details id="bkmrk-CopyData-"><summary>CopyData</summary>

<p class="callout info">Copy Data</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 1108.41px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Source Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Source Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Target Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Target Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Source Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Source Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Target Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Target Year</td></tr><tr style="height: 92.7344px;"><td style="width: 31.6644%; height: 92.7344px;">Source Period List</td><td class="align-center" style="width: 18.1326%; height: 92.7344px;">✓</td><td style="width: 50.203%; height: 92.7344px;">Source Period List

- `All`
- Valid Period List

</td></tr><tr style="height: 92.7344px;"><td style="width: 31.6644%; height: 92.7344px;">Target Period List</td><td class="align-center" style="width: 18.1326%; height: 92.7344px;">✓</td><td style="width: 50.203%; height: 92.7344px;">Target Period List

- `All`
- Valid Period List

</td></tr><tr style="height: 92.7344px;"><td style="width: 31.6644%; height: 92.7344px;">Entity List</td><td class="align-center" style="width: 18.1326%; height: 92.7344px;">✓</td><td style="width: 50.203%; height: 92.7344px;">Entity List

- `All`
- Valid Entity List

</td></tr><tr style="height: 92.7344px;"><td style="width: 31.6644%; height: 92.7344px;">Account List</td><td class="align-center" style="width: 18.1326%; height: 92.7344px;">✓</td><td style="width: 50.203%; height: 92.7344px;">Account List

- `All`
- Valid Account List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Factor to Multiply</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Factor to Multiply</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Copy Cell Text?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Copy Cell Text?

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Copy Derived Data?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Copy Derived Data?

- `true`
- `false`

</td></tr><tr style="height: 110.156px;"><td style="width: 31.6644%; height: 110.156px;">Copy Mode</td><td class="align-center" style="width: 18.1326%; height: 110.156px;">✓</td><td style="width: 50.203%; height: 110.156px;">Copy Mode

- `MERGE`
- `REPLACE`
- `ACCUMULATE`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">View</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Copy Data?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Copy Data?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Copy Rates?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Copy Rates?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Enable Logging</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Enable Logging

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
CopyData("Actual"," Budget"," 2000"," 2005"," 1"," 2"," 1"," 1"," C:hfmoutboxDataCopy.log"," 1.5"," true"," true"," merge"," YTD"," Entity Curr Data"," Rates Sys Data"," Enable Logging");
```

</details><details id="bkmrk-ClearData-"><summary>ClearData</summary>

<p class="callout info">Clear Data</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period List

- `All`
- Valid Period List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity List

- `All`
- Valid Entity List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Account List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Account List

- `All`
- Valid Account List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Clear Rates and System Data?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Clear Rates and System Data?</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Enable Detailed Logging</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Enable Detailed Logging

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Clear Data</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Clear Data

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ClearData("Actual"," 2005"," 1"," 2"," 1"," true"," true","true","C:hfmoutboxcleardata.log");
```

</details><details id="bkmrk-DeleteInvalidRecords-"><summary>DeleteInvalidRecords</summary>

<p class="callout info">Delete Invalid Records</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Clear Invalid Records?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Clear Invalid Records?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr></tbody></table>

**Example**

```dart
DeleteInvalidRecords("false","C:hfmoutboxInvalidRecords.log");
```

</details><details id="bkmrk-exit-"><summary>exit</summary>

<p class="callout info">exit</p>

**Input**

None

**Example**

```dart
exit();
```

</details><details id="bkmrk-UpdateParameter-"><summary>UpdateParameter</summary>

<p class="callout info">Update Parameter</p>

<p class="callout warning">Updates the `XFM_PARAMETERS` table</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Parameter Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Parameter Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Parameter Value</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Parameter Value</td></tr></tbody></table>

**Example**

```dart
UpdateParameter(""," ");
```

</details><details id="bkmrk-GetMemberProperties-"><summary>GetMemberProperties</summary>

<p class="callout info">Get Member Properties</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 135.922px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Dimension Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Dimension Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Dimension Members</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Dimension Members</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Path</td></tr></tbody></table>

**Example**

```dart
GetMemberProperties("Dimension Name","Dimension Members","File Path");
```

</details>
