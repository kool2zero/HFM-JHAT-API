# JHAT Commands: Administration

[← Back to index](../README.md)

#### Overview

These JHAT Commands will deal with administration of HFM

<p class="callout info">All parameters are required: the command fails with "Incorrect number of parameters." if any are missing.</p>

- **User Name**: pass `All` (any case) or an empty string `""` to include every user.
- **Task Name**: pass `ALL` or one of the [task names](#task-names) listed at the bottom of this page. Any other value fails with "Improper task name specified".
- **Output File Path**: the audit file is generated on the HFM server and then copied to this local path.
- Commands always cover all audit records up to the time the command runs. There is no date filter.

#### Commands

<details id="bkmrk-DeleteFilteredDataAuditRecords-"><summary>DeleteFilteredDataAuditRecords</summary>

<p class="callout info">Deletes the data audit records that match the user and POV filter.</p>

<p class="callout danger">Deleted audit records cannot be recovered.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">User Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">User name to filter on. `All` or `""` for all users.</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV String</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV String</td></tr></tbody></table>

**Example**

```dart
DeleteFilteredDataAuditRecords("User Name","POV String");
```

</details><details id="bkmrk-DeleteFilteredTaskAuditRecords-"><summary>DeleteFilteredTaskAuditRecords</summary>

<p class="callout info">Deletes the task audit records that match the user and task filter.</p>

<p class="callout danger">Deleted audit records cannot be recovered.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">UserName</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">User name to filter on. `All` or `""` for all users.</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Task Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Task Name

- One of the [task names](#task-names)
- `ALL`

</td></tr></tbody></table>

**Example**

```dart
DeleteFilteredTaskAuditRecords("All","Consolidation");
```

</details><details id="bkmrk-GetLatestTaskAuditAttachment-"><summary>GetLatestTaskAuditAttachment</summary>

<p class="callout info">Finds the matching task audit record with the most recent end time and downloads its attachment (for example, the log of a consolidation or data load) to the output path.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">UserName</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">User name to filter on. `All` or `""` for all users.</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Task Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Task Name

- One of the [task names](#task-names)
- `ALL`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to store the Audit Attachment</td></tr></tbody></table>

**Example**

```dart
GetLatestTaskAuditAttachment("All","Data Load","C:\TaskAudit\lastload.log");
```

</details><details id="bkmrk-FilterTaskAudit-"><summary>FilterTaskAudit</summary>

<p class="callout info">Filter the task audit and export to file</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">UserName</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">User name to filter on. `All` or `""` for all users.</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Task Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Task Name

- One of the [task names](#task-names)
- `ALL`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to store the audit</td></tr></tbody></table>

**Example**

```dart
FilterTaskAudit("All","Consolidation","C:\TaskAudit\consolidations.txt");
```

</details><details id="bkmrk-GetTaskAudit-"><summary>GetTaskAudit</summary>

<p class="callout info">Exports all task audit records, for all users and tasks, to a file.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to store the audit</td></tr></tbody></table>

**Example**

```dart
GetTaskAudit("C:\TaskAudit\task.txt");
```

</details><details id="bkmrk-FilterDataAudit-"><summary>FilterDataAudit</summary>

<p class="callout info">Filter the Data Audit Records</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">User Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">User name to filter on. `All` or `""` for all users.</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV String</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV String</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to store the audit</td></tr></tbody></table>

**Example**

```dart
FilterDataAudit("All","S#Actual.Y#2023.P#Dec","C:\DataAudit\filtered.txt");
```

</details><details id="bkmrk-GetDataAudit-"><summary>GetDataAudit</summary>

<p class="callout info">Exports all data audit records, for all users and POVs, to a file.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path to store the audit</td></tr></tbody></table>

**Example**

```dart
GetDataAudit("C:\DataAudit\all.txt");
```

</details>

#### Task Names

Task name values accepted by `DeleteFilteredTaskAuditRecords`, `GetLatestTaskAuditAttachment` and `FilterTaskAudit`. Matching ignores case and surrounding spaces.

| | | |
| --- | --- | --- |
| Allocate | Auto Match By Account | Auto Match By ID |
| Calculate Equity Pick Up | Chart Logic | Consolidation |
| Create Transactions | Custom Logic | Data Audit Purged |
| Data Clear | Data Copy | Data Entry |
| Data Extract | Data Load | Data Retrieval |
| Data Scan | Delete All Transactions | Delete Invalid Records |
| Delete Transactions | Document Attachments | Document Detachments |
| Drillable Region Extract | Drillable Region Load | Drillable Region Scan |
| Edit Transactions | Equity Pick Up Report | Extended Analytics Export |
| Extended Analytics Export To Flat File | Extended Analytics Schema Delete | External |
| Idle | Intercompany Matching Report | Intercompany Matching Report By Acct |
| Intercompany Matching Report By ID | Intercompany Transaction Report | Journal Entry |
| Journal Posting | Journal Reports | Journal Retrieval |
| Journal Template Entry | Journal Unposting | Lock/Unlock IC Entities |
| Logoff | Logon | Logon Failure |
| Manage Intercompany Transaction Periods | Manage Reason Codes | Manual Match Transactions |
| Member List Extract | Member List Load | Member List Scan |
| Metadata Extract | Metadata Load | Metadata Load Diff |
| Metadata Scan | Modify Application | On Demand Rules |
| Post All Transactions | Post Transactions | Rules Extract |
| Rules Load | Rules Scan | Security Extract |
| Security Load | Task Audit Purged | Transactions Extract |
| Transactions Load | Transactions Scan | Translation |
| Unmatch All Transactions | Unmatch Transactions | Unpost All Transactions |
| Unpost Transactions | | |
