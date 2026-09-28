# JHAT Commands: Administration

[← Back to index](../README.md)

## Overview

Commands for HFM's two audit logs. They need an open application.

- The **task audit** records user activity: who ran which task (a consolidation, a data load, a logon, and so on) and when. Some tasks store an attachment, such as the task's log.
- The **data audit** records changes to data values, for scenarios and accounts that have data auditing enabled.

These commands export audit records to local files or delete them, for example to archive and purge the audit tables.

> [!NOTE]
> All parameters are required: the command fails with "Incorrect number of parameters." if any are missing.

- **User Name**: pass `All` (any case) or an empty string `""` to include every user.
- **Task Name**: pass `ALL` or one of the [task names](#task-names) listed at the bottom of this page. Any other value fails with "Improper task name specified".
- **Output File Path**: the audit file is generated on the HFM server and then copied to this local path.
- Commands always cover all audit records up to the time the command runs. There is no date filter.

## Commands

**Commands on this page:**

[DeleteFilteredDataAuditRecords](#deletefiltereddataauditrecords), [DeleteFilteredTaskAuditRecords](#deletefilteredtaskauditrecords), [GetLatestTaskAuditAttachment](#getlatesttaskauditattachment), [FilterTaskAudit](#filtertaskaudit), [GetTaskAudit](#gettaskaudit), [FilterDataAudit](#filterdataaudit), [GetDataAudit](#getdataaudit)

### DeleteFilteredDataAuditRecords

> [!NOTE]
> Deletes the data audit records that match the user and POV filter.

> [!CAUTION]
> Deleted audit records cannot be recovered.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| User Name | ✓ | User name to filter on. `All` or `""` for all users. |
| POV String | ✓ | POV to filter on, e.g. `S#Actual.Y#2023.P#Dec` |

**Example**

```dart
DeleteFilteredDataAuditRecords("User Name","POV String");
```

### DeleteFilteredTaskAuditRecords

> [!NOTE]
> Deletes the task audit records that match the user and task filter.

> [!CAUTION]
> Deleted audit records cannot be recovered.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| UserName | ✓ | User name to filter on. `All` or `""` for all users. |
| Task Name | ✓ | `ALL`, or one of the [task names](#task-names) |

**Example**

```dart
DeleteFilteredTaskAuditRecords("All","Consolidation");
```

### GetLatestTaskAuditAttachment

> [!NOTE]
> Finds the matching task audit record with the most recent end time and downloads its attachment (for example, the log of a consolidation or data load) to the output path.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| UserName | ✓ | User name to filter on. `All` or `""` for all users. |
| Task Name | ✓ | `ALL`, or one of the [task names](#task-names) |
| Output File Path | ✓ | Local file to save the attachment to |

**Example**

```dart
GetLatestTaskAuditAttachment("All","Data Load","C:\TaskAudit\lastload.log");
```

### FilterTaskAudit

> [!NOTE]
> Exports the task audit records for one user (or all users) and one task (or all tasks) to a file.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| UserName | ✓ | User name to filter on. `All` or `""` for all users. |
| Task Name | ✓ | `ALL`, or one of the [task names](#task-names) |
| Output File Path | ✓ | Local file to save the audit records to |

**Example**

```dart
FilterTaskAudit("All","Consolidation","C:\TaskAudit\consolidations.txt");
```

### GetTaskAudit

> [!NOTE]
> Exports all task audit records, for all users and tasks, to a file.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to save the audit records to |

**Example**

```dart
GetTaskAudit("C:\TaskAudit\task.txt");
```

### FilterDataAudit

> [!NOTE]
> Exports the data audit records for one user (or all users) that match a POV to a file.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| User Name | ✓ | User name to filter on. `All` or `""` for all users. |
| POV String | ✓ | POV to filter on, e.g. `S#Actual.Y#2023.P#Dec` |
| Output File Path | ✓ | Local file to save the audit records to |

**Example**

```dart
FilterDataAudit("All","S#Actual.Y#2023.P#Dec","C:\DataAudit\filtered.txt");
```

### GetDataAudit

> [!NOTE]
> Exports all data audit records, for all users and POVs, to a file.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File Path | ✓ | Local file to save the audit records to |

**Example**

```dart
GetDataAudit("C:\DataAudit\all.txt");
```

## Task Names

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
