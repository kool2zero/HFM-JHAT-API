# JHAT Commands: Load

[← Back to index](../README.md)

#### Overview

These JHAT Commands have to do with Loading Data, Journals, etc.

#### Commands

<details id="bkmrk-LoadSecurity-"><summary>LoadSecurity</summary>

<p class="callout info">Load Security Into HFM</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Security File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Delmiter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Delmiter</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Clear before Load</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Clear before Load

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Validate Users</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Validate Users

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load Users</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load Users

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load Classes</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load Classes

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load Roles</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load Roles

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load Accesses</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load Accesses

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
LoadSecurity("C:HfmSecurityLoadFile.sec"," C:HfmSecurityLoad.log",";"," True/False Clear before Load"," True/False Validate Users"," True/False Load Users"," True/False Load Classes"," True/False Load Roles"," True/False Load Accesses");
```

</details><details id="bkmrk-LoadSecurityExpanded-"><summary>LoadSecurityExpanded</summary>

<p class="callout info">Load Security Expanded</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Security File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Delimiter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Delimiter</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Clear All?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Clear All?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Validate Users?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Validate Users?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%;">Filter Users?</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Filter Users?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%;">Filter Security Class?</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Filter Security Class?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%;">Filter Role Access?</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Filter Role Access?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%;">Filter Security Class Access?</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Filter Security Class Access?

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
LoadSecurityExpanded("Security File","Log File","Delimiter","Clear All?","Validate Users?","Filter Users?","Filter Security Class?","Filter Role Access?","Filter Security Class Access?");
```

</details><details id="bkmrk-LoadMetaData-"><summary>LoadMetaData</summary>

<p class="callout info">Load MetaData</p>

<p class="callout info">Can have 3, 17 or 18 parameters</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 1260.38px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File  
</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File  
</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Delimiter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Delimiter</td></tr><tr style="height: 110.156px;"><td style="width: 31.6644%; height: 110.156px;">Mode</td><td class="align-center" style="width: 18.1326%; height: 110.156px;">✓</td><td style="width: 50.203%; height: 110.156px;">Mode

- `Merge`
- `Replace`
- `Clear`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Currencies?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Currencies

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Scenarios?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Scenarios

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Entities?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Entities

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Accounts?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Accounts

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Custom1?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Custom1

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Custom2?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Custom2

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Custom3?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Custom3

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Custom4?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Custom4

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Consolidation Methods?</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Consolidation Methods

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load App Settings?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load App Settings

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">System Accounts?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">System Accounts

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load Value Dimension?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load Value Dimension

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load ICP?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load ICP

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Integrity Check?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Integrity Check

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
LoadMetaData("C:HfmMetadataLoadFile.xml"," C:HfmMetadataLoad.log",";","Merge, Replace or Clear Mode"," True or False Load Currencies"," True or FalseLoad Scenarios"," True or False Load Entities"," True or False Load Accounts"," True or False Load Custom1"," True or False Load Custom2"," True or False Load Custom3"," True or False Load Custom4"," True or False Load Consolidation Methods"," True or False Load App Settings","True or False System Accounts","True or False Load Value Dimension","True or False Load ICP","True or False Integrity Check");
```

</details><details id="bkmrk-LoadMetaDataExtDim-"><summary>LoadMetaDataExtDim</summary>

<p class="callout info">Load MetaData Extended</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 689.031px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Delimiter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Delimiter</td></tr><tr style="height: 110.156px;"><td style="width: 31.6644%; height: 110.156px;">Mode</td><td class="align-center" style="width: 18.1326%; height: 110.156px;">✓</td><td style="width: 50.203%; height: 110.156px;">Mode

- `Merge`
- `Replace`
- `Clear`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Check Integrity</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Check Integrity

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Dimensions to Load

</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Dimensions to Load

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Currencies</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Currencies

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load App Settings</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load App Settings

- `true`
- `false`

</td></tr><tr style="height: 93.0469px;"><td style="width: 31.6644%; height: 93.0469px;">Load Consolidation Methods</td><td class="align-center" style="width: 18.1326%; height: 93.0469px;">✓</td><td style="width: 50.203%; height: 93.0469px;">Load Consolidation Methods

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load System Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load System Accounts

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
LoadMetaDataExtDim("Load Filename", "Log Filename", "Delimiter", "ReplaceMode", "CheckIntegrity", "DimensionsToLoad","Load Currencies", "LoadAppSettings", "Load Consol Methods", "LoadSystemAccounts");
```

</details><details id="bkmrk-LoadICTransactions-"><summary>LoadICTransactions</summary>

<p class="callout info">Load Intercompany Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 206.672px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">c:HFMICTrans.trn</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">c:HFMICtrans.log</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Mode</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Mode

- `Load`
- `Scan`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load Option</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load Option

- `Merge`
- `Replace`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Delimiter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Delimiter</td></tr></tbody></table>

**Example**

```dart
LoadICTransactions("c:HFMICTrans.trn"," c:HFMICtrans.log"," Load","Merge",";");
```

</details><details id="bkmrk-LoadDocument-"><summary>LoadDocument</summary>

<p class="callout info">Load Document</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 349.172px; width: 94.8718%;"><tbody><tr style="height: 30.7969px;"><td style="width: 31.6644%; height: 30.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 30.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 30.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Path to Document</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Document on Local Machine</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security Class</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Security Class</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Overwrite</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Overwrite

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Document Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Document Type

- `WEBFORM`
- `JOURNAL`
- `INTERCOMPANY`
- `ICTRANSACTION`
- `ICMATCHACCOUNT`
- `ICMATCHID`
- `ICMATCHTEMPLATE`
- `DATAEXPLORER`
- `WEBGRID`
- `WORKSPACE`
- `CUSTOM`
- `TASK`
- `FOLDER`
- `All`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Type

- `FORM`
- `REPORT`
- `XML`
- `HTML`
- `REPORTXML`
- `CUSTOM`
- `FOLDER`
- `All`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Is Private?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Is Private?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Path in HFM</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path in HFM</td></tr></tbody></table>

**Example**

```dart
LoadDocument("FormTest","Test Description"," C:inputdirCalc2col.wdf"," US"," true","WebForm","FORM","true","/RootFolder/Test");
```

</details><details id="bkmrk-LoadRules-"><summary>LoadRules</summary>

<p class="callout info">Load Rules</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 135.922px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Rule File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Rule File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scan Only?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scan Only

- `true`
- `false`

<p class="callout info">Optional</p>

</td></tr></tbody></table>

**Example**

```dart
LoadRules("C:HfmRuleLoadFile.rul"," C:HfmRulesLoad.log"," Optional True or False Scan Only");
```

</details><details id="bkmrk-LoadMemberLists-"><summary>LoadMemberLists</summary>

<p class="callout info">Load Member Lists</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--6" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Member List File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Member List File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scan Only?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scan Only

- `true`
- `false`

<p class="callout info">Optional</p>

</td></tr></tbody></table>

**Example**

```dart
LoadMemberLists("C:HfmMemberListsLoadFile.lst"," C:HfmMemberListsLoad.log"," Optional True or False Scan Only");
```

</details><details id="bkmrk-LoadData-"><summary>LoadData</summary>

<p class="callout info">Load Data</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--43" style="height: 217.891px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load Mode</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load Mode

- `Merge`
- `Replace`
- `Accumulate`
- `ReplaceBySecurity`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Data File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Accumulate withing File?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Accumulate withing File?

- `true`
- `false`

</td></tr><tr style="height: 46.5938px;"><td style="width: 31.6644%; height: 46.5938px;">Contains Ownership?</td><td class="align-center" style="width: 18.1326%; height: 46.5938px;">✓</td><td style="width: 50.203%; height: 46.5938px;">Contains Ownership?

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
LoadData("Merge"," C:HfmDataLoadFile.dat"," C:HfmDataLoad.log"," True or False Accumulate in File"," True or False contains ownership data"," ");
```

</details><details id="bkmrk-StartLoadData-"><summary>StartLoadData</summary>

<p class="callout info">Start Load Data</p>

<p class="callout info">Calls the same API as `LoadData`</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--44" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Load Mode</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load Mode

- `Merge`
- `Replace`
- `Accumulate`
- `ReplaceBySecurity`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Data File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Accumulate withing File?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Accumulate withing File?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 46.5938px;">Contains Ownership?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 46.5938px;">Contains Ownership?

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
StartLoadData("Merge"," C:HfmDataLoadFile.dat"," C:HfmDataLoad.log"," True or False Accumulate in File"," True or False contains ownership data"," ");
```

</details><details id="bkmrk-LoadPhaseInfo-"><summary>LoadPhaseInfo</summary>

<p class="callout info">Load Phase Info</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--45" style="height: 158.766px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 46.7969px;"><td style="width: 31.6644%; height: 35.375px;">Load Mode</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Load Mode

- `Merge`
- `Replace`

</td></tr><tr style="height: 46.7969px;"><td style="width: 31.6644%; height: 35.375px;">Data File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr><tr><td style="width: 31.6644%;">Delmiter</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Delimiter</td></tr></tbody></table>

**Example**

```dart
LoadPhaseInfo("Merge or Replace"," C:HfmDataLoadFile.dat"," C:HfmDataLoad.log"," ");
```

</details><details id="bkmrk-LoadJournal-"><summary>LoadJournal</summary>

<p class="callout info">Load Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--46" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Data File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr><tr><td style="width: 31.6644%;">Delmiter</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Delimiter</td></tr></tbody></table>

**Example**

```dart
LoadJournal("C:HfmDataLoadFile.dat"," C:HfmDataLoad.log"," ");
```

</details><details id="bkmrk-LoadModuleConfiguration-"><summary>LoadModuleConfiguration</summary>

<p class="callout info">Load Module Configuration</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--7" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Data File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr></tbody></table>

**Example**

```dart
LoadModuleConfiguration("C:HfmModuleConfiguration.XML"," C:HfmModuleConfiguration.log");
```

</details>
