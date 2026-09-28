# JHAT Commands: Administration

[← Back to index](../README.md)

#### Overview

These JHAT Commands will deal with administration of HFM

#### Commands

<details id="bkmrk-DeleteFilteredDataAuditRecords-"><summary>DeleteFilteredDataAuditRecords</summary>

<p class="callout info">Delete Data Audit Records based on POV</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">User Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">User Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV String</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV String</td></tr></tbody></table>

**Example**

```dart
DeleteFilteredDataAuditRecords("User Name","POV String");
```

</details><details id="bkmrk-DeleteFilteredTaskAuditRecords-"><summary>DeleteFilteredTaskAuditRecords</summary>

<p class="callout info">Delete Filtered Task Audit Records</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">UserName</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">UserName</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Task Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Task Name

- `Task`
- `ALL`

</td></tr></tbody></table>

**Example**

```dart
DeleteFilteredTaskAuditRecords("UserName","Task|ALL");
```

</details><details id="bkmrk-GetLatestTaskAuditAttachment-"><summary>GetLatestTaskAuditAttachment</summary>

<p class="callout info">Get the Last Audit Attachment</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">UserName</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">UserName</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Task Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Task Name

- `Task`
- `ALL`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">  
</td><td style="width: 50.203%; height: 35.375px;">Path to store the Audit Attachment</td></tr></tbody></table>

**Example**

```dart
GetLatestTaskAuditAttachment("UserName","Task|ALL","");
```

</details><details id="bkmrk-FilterTaskAudit-"><summary>FilterTaskAudit</summary>

<p class="callout info">Filter the task audit and export to file</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">UserName</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">UserName</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Task Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Task Name

- `Task`
- `ALL`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">  
</td><td style="width: 50.203%; height: 35.375px;">Path to store the audit</td></tr></tbody></table>

**Example**

```dart
FilterTaskAudit("UserName","Task|ALL","");
```

</details><details id="bkmrk-GetTaskAudit-"><summary>GetTaskAudit</summary>

<p class="callout info">Get All Task Audit Records</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to store the audit</td></tr></tbody></table>

**Example**

```dart
GetTaskAudit("C:\TaskAudit\task.txt");
```

</details><details id="bkmrk-FilterDataAudit-"><summary>FilterDataAudit</summary>

<p class="callout info">Filter the Data Audit Records</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">User Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">User Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV String</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV String</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">  
</td><td style="width: 50.203%; height: 35.375px;">Path to store the audit</td></tr></tbody></table>

**Example**

```dart
FilterDataAudit("User Name","POV String","<output>");</output>
```

</details><details id="bkmrk-GetDataAudit-"><summary>GetDataAudit</summary>

<p class="callout info">Get the data audit records and store them in a file</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to store the audit</td></tr></tbody></table>

**Example**

```dart
GetDataAudit("<Output File Path>");
```

</details>
