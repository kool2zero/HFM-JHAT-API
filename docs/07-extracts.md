# JHAT Commands: Extracts

[← Back to index](../README.md)

#### Overview

These JHAT commands are related to extracting data from HFM

#### Commands

<details id="bkmrk-InitLists-"><summary>InitLists</summary>

<p class="callout info">Initializes a list that can be attached to an extract</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">InitLists</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">InitLists</td></tr></tbody></table>

**Example**

```dart
InitLists();
```

</details><details id="bkmrk-ClearList-"><summary>ClearList</summary>

<p class="callout info">Clear List</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">List to Clear</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Select Which List to Clear</td></tr></tbody></table>

**Example**

```dart
ClearList("List to Clear");
```

</details><details id="bkmrk-AddItemsToListFromMemberlist-"><summary>AddItemsToListFromMemberlist</summary>

<p class="callout info">Add Item to List from Member List</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Numeric Value of the List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Dimension</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Which Dimension</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Parent Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Parent Name</td></tr></tbody></table>

**Example**

```dart
AddItemsToListFromMemberlist("9","Entity"," [Descendants]"," Regional; ");
```

</details><details id="bkmrk-AddItemToList-"><summary>AddItemToList</summary>

<p class="callout info">Add item to a list</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Numeric Value of the List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Value</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Value</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">List</td></tr></tbody></table>

**Example**

```dart
AddItemToList("1","Value"," [elimination]");
```

</details><details id="bkmrk-ExtractMetaData-"><summary>ExtractMetaData</summary>

<p class="callout info">Extract Metadata from HFM</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 688.859px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output Log</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output Log</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Delimiter</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Delimiter

- `;`
- `,`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Currencies</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Currencies

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Scenarios</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Scenarios

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Entities</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Entities

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Accounts

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Custom 1</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Custom 1

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Custom 2</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Custom 2

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Custom 3</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Custom 3

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Custom 4</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Custom 4

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Consolidation Methods</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Consolidation Methods

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract App Settings</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract App Settings

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Extract System Accounts

</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Extract System Accounts

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Values

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract ICPs</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract ICPs

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Cell Text Labels</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Cell Text Labels

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ExtractMetaData("C:hfmoutboxMetadata__HFM2.04.app"," C:hfmoutboxMetadataExtract.log"," ;"," true"," true"," false"," false"," false"," false"," true"," false"," false"," true","true","true","true"," true");
```

</details><details id="bkmrk-ExtractMetaDataExtDim-"><summary>ExtractMetaDataExtDim</summary>

<p class="callout info">Extracting Metadata from HFM</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Delimiter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Delimiter</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Dimensions to Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Dimensions to Extract delimited by period

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Currencies</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Currencies

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Application Settings</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Application Settings

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Consolidation Methods</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Consolidation Methods

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract System Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract System Accounts

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Cell Label Texts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Cell Label Texts

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ExtractMetaDataExtDim("<Extract filename>", "<Log filename>", "<Delimiter>", "<DimensionsToExtract>", "<ExtractCurrencies>", "<Extract AppSettings>", "<ExtractConsolMethods>", "<Extract SystemAccounts>", "<cell text labels>");
```

</details><details id="bkmrk-ExtractData-"><summary>ExtractData</summary>

<p class="callout info">Extracting Data from HFM</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--77" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Delimiter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Delimiter

- `,`
- `;`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">View</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period

- `All`
- Use Add item to List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity

- `All`
- Use Add item to List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Account</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Account

- `All`
- Use Add item to List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Inclue Calculated Data</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include Calculated Data

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ExtractData("d:\\Data_Extract.txt", "d:\\Data_Extract.log", ";", "YTD", "2021", "Actual", "6", "7", "8", "true");
```

</details><details id="bkmrk-EAExtract-"><summary>EAExtract</summary>

<p class="callout info">Extended Analytics (to table) Extract</p>

**Input**

<table border="1" id="bkmrk-%C2%A0-%E2%9C%93-%C2%A0-%C2%A0-%E2%9C%93-%C2%A0-%C2%A0-%E2%9C%93-%C2%A0-%C2%A0-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">DSN Name</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">DSN Name</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Table Prefix</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Table Prefix</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Aggregate Option</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Aggregate Option</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Filter Dynamic Accounts</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Filter Dynamic Accounts</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Year</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Period List</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Period List</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">View List</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">View List</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Entity List</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Entity List</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Value List</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Value List</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Account List</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Account List</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">ICP List</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">ICP List</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Custom 1</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Custom 1</td></tr><tr style="height: 35.375px;"><td style="width: 38.8363%; height: 35.375px;">Custom 2</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%; height: 35.375px;">Custom 2</td></tr><tr><td style="width: 38.8363%;">Custom 3</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%;">Custom 3</td></tr><tr><td style="width: 38.8363%;">Custom 4</td><td class="align-center" style="width: 22.1922%; height: 35.375px;">✓</td><td style="width: 38.8363%;">Custom 4</td></tr></tbody></table>

**Example**

```dart
EAExtract("DSN Name","Table prefix","Aggregate option","Filter dynamic accoutns", "Scenario","Year", "Period list", "View List","Entity list", "Value list", "Account list", "ICP list", "custom 1", "Cusom 2", "Custom 3", "Custom 4");
```

</details><details id="bkmrk-ExtractPhaseInfo-"><summary>ExtractPhaseInfo</summary>

<p class="callout info">Extract information about the Phases</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Export File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Export File Path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File Path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Delimiter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Delmiter</td></tr></tbody></table>

**Example**

```dart
ExtractPhaseInfo("c:VoyagerData_Extract.dat"," c:VoyagerData_Extract.log","; ");
```

</details><details id="bkmrk-ExtractSecurity-"><summary>ExtractSecurity</summary>

<p class="callout info">Extract Security Information</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--6" style="height: 100.547px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Security File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Log File</td></tr></tbody></table>

**Example**

```dart
ExtractSecurity("c:VoyagerSecurity_Extract.sec","c:VoyagerSecurity_Extract.log");
```

</details><details id="bkmrk-ExtractSecurityExpanded-"><summary>ExtractSecurityExpanded</summary>

<p class="callout info">Extract Security</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--7" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Security File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Log File</td></tr></tbody></table>

**Example**

```dart
ExtractSecurityExpanded("c:VoyagerSecurity_Extract.sec","c:VoyagerSecurity_Extract.log");
```

</details><details id="bkmrk-ExtractJournal-"><summary>ExtractJournal</summary>

<p class="callout info">Extract Journal Entries</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--68" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Export File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Export File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Standard</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Standard

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Recurring</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Recurring

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract Regular</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract Regular

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year </td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year </td></tr><tr><td style="width: 31.6644%;">Period</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Period</td></tr><tr><td style="width: 31.6644%;">Delimiter</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Delimiter</td></tr></tbody></table>

**Example**

```dart
ExtractJournal("Journal File"," Log File","Extract Standard","Extract Recurring", "Extract Regular","Scenario","Year","Period","Delmiter");
```

</details><details id="bkmrk-ExtractJournalPlus-"><summary>ExtractJournalPlus</summary>

<p class="callout info">Extract Journals Plus</p>

<p class="callout warning">Must Use `AddItemsToListFromMemberlist` function for Dimension parameters.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--69" style="height: 1655.84px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Export File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Log File</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Extract Standard</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Extract Standard

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Extract Recurring</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Extract Recurring

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Extract Regular</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Extract Regular

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 144.062px;"><td style="width: 31.6644%; height: 144.062px;">Period</td><td class="align-center" style="width: 18.1326%; height: 144.062px;">✓</td><td style="width: 50.203%; height: 144.062px;">Periods

- `All`
- `JAN`
- `FEB`
- `MAR`
- etc

</td></tr><tr style="height: 92.7344px;"><td style="width: 31.6644%; height: 92.7344px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 92.7344px;">✓</td><td style="width: 50.203%; height: 92.7344px;">Entity

- `All`
- Valid Member List

</td></tr><tr style="height: 92.7344px;"><td style="width: 31.6644%; height: 92.7344px;">Value</td><td class="align-center" style="width: 18.1326%; height: 92.7344px;">✓</td><td style="width: 50.203%; height: 92.7344px;">Value

- `All`
- Valid Member List

</td></tr><tr style="height: 75.9375px;"><td style="width: 31.6644%; height: 75.9375px;">Labels</td><td class="align-center" style="width: 18.1326%; height: 75.9375px;">✓</td><td style="width: 50.203%; height: 75.9375px;">Labels

- Multiple can be delmited by `;`

</td></tr><tr style="height: 75.9375px;"><td style="width: 31.6644%; height: 75.9375px;">Groups</td><td class="align-center" style="width: 18.1326%; height: 75.9375px;">✓</td><td style="width: 50.203%; height: 75.9375px;">Groups

- Multiple can be delmited by `;`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Include `Working` Status?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Include `Working` Status?

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Include `Submitted` Status?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Include `Submitted` Status?

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Include `Approved` Status?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Include `Approved` Status?

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Include `Rejected` Status? </td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Include `Rejected` Status?

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Include `Posted` Status?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Include `Posted` Status?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include `Regular`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Regular`?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include `Auto Reversing`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Auto Reversing`?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include `Auto Reversed`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Auto Reversed`?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%; height: 35.375px;">Include `Balanced`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Balance`?

- `true`
- `false`

</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 35.375px;">Include `Unbalanced`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Unbalanced`?

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 35.375px;">Include `Balanced by Entity`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Balanced by Entity`?

- `true`
- `false`

</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Delimiter</td><td class="align-center" style="width: 18.1326%; height: 29.7969px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Delimiter</td></tr></tbody></table>

**Example**

```dart
ExtractJournalPlus("File Name","Log File","Extract Standard","Extract Recurring","Extract Regular","Scenario","Year","Period","Entity","Value","Labels","Groups","Include Working Status?","Include Submitted Status?","Include Approved Status?","Include Rejected Status? ","Include Posted Status?","Include Regular?","Include Auto Reversing?","Include Auto Reversed?","Include Balanced?","Include Unbalanced?","Include Balanced by Entity?","Delimiter");
```

</details><details id="bkmrk-ExtractICTransactions-"><summary>ExtractICTransactions</summary>

<p class="callout info">Extract Intercompany Transactions</p>

<p class="callout warning">Must Use `AddItemsToListFromMemberlist` function for Dimension parameters.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--70" style="height: 454.297px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Extract File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity

- `All`
- Valid Member List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP

- `All`
- Valid Member List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include `Unmatched` Transactions?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Unmatched` Transactions?

- `YES`
- `NO`

</td></tr><tr><td style="width: 31.6644%; height: 35.375px;">Include `Matched` Transactions?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Matched` Transactions?

- `YES`
- `NO`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include `Mismatched` Transactions?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Mismatched` Transactions?

- `YES`
- `NO`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include `Posted` Transactions?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Posted` Transactions?

- `YES`
- `NO`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include `Unposted` Transactions?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Unposted` Transactions?

- `YES`
- `NO`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include `Unmatched` Transactions?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Unmatched` Transactions?

- `YES`
- `NO`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include `Reason Code`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Reason Code`?

- `YES`
- `NO`

</td></tr><tr><td style="width: 31.6644%;">Transaction Currency</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Transaction Currency</td></tr><tr><td style="width: 31.6644%;">Match Code</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Match Code</td></tr></tbody></table>

**Example**

```dart
ExtractICTransactions("Extract File","Scenario","Year","Period","Entity List","ICP List","Include Unmatched Transactions?","Include Matched Transactions?","Include Mismatched Transactions?","Include Posted Transactions?","Include Unposted Transactions?","Include Unmatched Transactions?","Include Reason Code?","Transaction Currency","Match Code");
```

</details><details id="bkmrk-ExtractRules-"><summary>ExtractRules</summary>

<p class="callout info">Extract Rules from HFM</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--71" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Rule File Format</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Rule File Format

- `RLE`
- `XML`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File Path</td></tr></tbody></table>

**Example**

```dart
ExtractRules("Rule File Format","Output File","Log File");
```

</details><details id="bkmrk-ExtractMemberlists-"><summary>ExtractMemberlists</summary>

<p class="callout info">Extract Member Lists from HFM</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--72" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr></tbody></table>

**Example**

```dart
ExtractMemberlists("Output File","Log File");
```

</details><details id="bkmrk-ExtractDataExtDim-"><summary>ExtractDataExtDim</summary>

<p class="callout info">Extract Data Extended</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--73" style="height: 189.938px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include `Header`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include `Header`?

- `true`
- `false`

</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Include `Data`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Include `Data`?

- `true`
- `false`

</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Include `Dynamic Accounts`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Include `Dynamic Accounts`?

- `true`
- `false`

</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Include `Calc Data`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Include `Calc Data`?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%;">Include `Derived Data`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%;">Include `Derived Data`?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%;">Line Item Details</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%;">Line Item Details

- `<Blank>` (Exclude)
- `Individual`
- `Detail`

</td></tr><tr><td style="width: 31.6644%;">Include `Cell Text`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%;">Include `Cell Text`?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%;">Include `Phase Data`?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%;">Include `Phase Data`?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%;">Delimiter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%;">Delimiter</td></tr><tr><td style="width: 31.6644%;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%;">Output File</td></tr><tr><td style="width: 31.6644%;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%;">Log File</td></tr></tbody></table>

**Example**

```dart
ExtractDataExtDim("POV","Include Header?","Include Data?","Include Dynamic Accounts?","Include Calc Data?","Include Derived Data?","Line Item Details","Include Cell Text?","Include Phase Data?","Delimiter","Output File","Log File");
```

</details><details id="bkmrk-ExtractDocument-"><summary>ExtractDocument</summary>

<p class="callout info">Extract a Document from HFM</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--74" style="height: 206.672px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Document Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Document Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Extract File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Extract File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Document Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Document Type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Folder</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Folder</td></tr></tbody></table>

**Example**

```dart
ExtractDocument("Document Name","Extract File","Document Type","File Type","Folder");
```

</details><details id="bkmrk-ExtractModuleConfiguration-"><summary>ExtractModuleConfiguration</summary>

<p class="callout info">Extract Module Configuration</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--75" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File Path</td></tr></tbody></table>

**Example**

```dart
ExtractModuleConfiguration("Output File Path","Log File Path");
```

</details>
