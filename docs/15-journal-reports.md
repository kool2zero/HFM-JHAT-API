# JHAT Commands: Journal Reports

[← Back to index](../README.md)

#### Overview

These JHAT Commands are related to Journal Report actions

#### Commands

<details id="bkmrk-GetAutoJournalReportWithFilter-"><summary>GetAutoJournalReportWithFilter</summary>

<p class="callout info">Export an Auto Journal Report with Entity and Group filters to a flat file</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity Filter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity Filter</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Group Filter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Group Filter</td></tr></tbody></table>

**Example**

```dart
GetAutoJournalReportWithFilter("POV","Output File Path","Entity Filter","Group Filter");
```

</details><details id="bkmrk-GetAutoJournalReport-"><summary>GetAutoJournalReport</summary>

<p class="callout info">Export an Auto Journal Report to a flat file</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr></tbody></table>

**Example**

```dart
GetAutoJournalReport("POV","Output File Path");
```

</details><details id="bkmrk-GenerateReport-"><summary>GenerateReport</summary>

<p class="callout info">Run a Journal Report and Save the File</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr><td style="width: 31.6644%;">Path</td><td style="width: 18.1326%;">  
</td><td style="width: 50.203%;">Path to Report in Documents</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Report Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Report Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Report Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Report Type:

- `JOURNAL_REPORT`
- `SYSTEM_MATCHING_REPORT`
- `EPU_REPORT`
- `SECURITY_ACCESS_CLASS_BY_USER_REPORT`
- `SECURITY_ACCESS_ROLES_BY_USER_REPORT`
- `SECURITY_ACCESS_CLASS_AND_ROLES_BY_USER_REPORT`
- `SECURITY_ACCESS_USERS_BY_GROUP_REPORT`
- `ICP_REPORT_TYPE_ID`
- `ICM_REPORT_TYPE_ACCOUNT`
- `ICM_REPORT_TYPE_TRANSACTION`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Report Format</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Format of Export Report:

- `HFM_FORMAT` - HFM format
- `PDF_FORMAT` - PDF format
- `RTF_FORMAT` - Rich Text File format
- `HTML_FORMAT` - HTML Format
- `XLS_FORMAT` - Excel 2010 and prior format
- `XLSX_FORMAT` - Excel 2013 and newer format

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Path to Export the Report</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV Override</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Enter a POV to override any prior defined POVs by `SetPOV`</td></tr></tbody></table>

**Example**

```dart
GenerateReport("","C1detail","ReportType","HFM_FORMAT","OutputFilePath","Overridden POVSlice");
```

</details>
