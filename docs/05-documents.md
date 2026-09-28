# JHAT Commands: Documents

[← Back to index](../README.md)

## Overview

Commands for Document Manager, where HFM stores data forms, data grids, reports, task lists and folders. They need an open application.

A **task list** is a document that groups links to other documents, such as the forms and reports a user works through at month end.

- **Folders:** pass `\` for the root folder of Document Manager.
- **Document Type** and **File Type:** see [Document and file types](#document-and-file-types) below.
- **true/false parameters:** `true` (any case) means true. Any other value means false.
- **Task lists:** stored in Document Manager as Workspace documents with the XML file type.

## Commands

**Commands on this page:**

[EnumDocuments](#enumdocuments), [EnumTasksUnderTaskList](#enumtasksundertasklist), [DeleteDocument](#deletedocument), [CreateTaskList](#createtasklist), [AddTaskToTaskList](#addtasktotasklist), [DeleteTaskFromTaskList](#deletetaskfromtasklist)

### EnumDocuments

> [!NOTE]
> Lists the documents in a Document Manager folder and writes them to a UTF-8 file, one `name;description` line per document.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Path | ✓ | Folder to list. `\` for the root folder. |
| Document Type | ✓ | Type of document to list |
| Document File Type | ✓ | File type of document to list |
| Show Private | ✓ | `true`: include private documents. Otherwise only public documents are listed. |
| Output File Path | ✓ | Local file to write. Overwritten if it exists. |

**Example**

```text
EnumDocuments("\", "WebForm", "Form", "false", "C:\Output\documents.txt");
```

### EnumTasksUnderTaskList

> [!NOTE]
> Reads a task list and writes its XML definition, including the documents it contains, to a UTF-8 file.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Path | ✓ | Folder the task list is stored in |
| Task List Name | ✓ | Name of the task list |
| Output File Path | ✓ | Local file to write the XML to. Overwritten if it exists. |

**Example**

```text
EnumTasksUnderTaskList("\TaskLists", "MonthEnd", "C:\Output\MonthEnd.xml");
```

### DeleteDocument

> [!NOTE]
> Deletes a document from Document Manager.

> [!CAUTION]
> Be careful when running this command.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Document Name | ✓ | Name of the document |
| Document Type | ✓ | Type of the document |
| File Type | ✓ | File type of the document |
| Folder | ✓ | Folder the document is stored in. `\` for the root folder. |

**Example**

```text
DeleteDocument("MonthEnd", "Workspace", "XML", "\TaskLists");
```

### CreateTaskList

> [!NOTE]
> Creates an empty task list owned by the logged-on user. Use `AddTaskToTaskList` to add documents to it.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Name | ✓ | Name of the task list |
| Description | ✓ | Description of the task list |
| Security Class | ✓ | Security class for the task list |
| Is Private | ✓ | `true` / `false` |
| Overwrite | ✓ | `true`: replace an existing task list with the same name |
| Location | ✓ | Folder to create the task list in. `\` for the root folder. |

**Example**

```text
CreateTaskList("MonthEnd", "Month end tasks", "[Default]", "false", "true", "\TaskLists");
```

### AddTaskToTaskList

> [!NOTE]
> Adds an existing document to the end of a task list and saves the task list.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Task List Name | ✓ | Name of the task list |
| Task List Path | ✓ | Folder the task list is stored in |
| Document Name | ✓ | Name of the document to add. The document must exist. |
| Document Path | ✓ | Folder the document is stored in |
| Document Type | ✓ | Type of the document to add |
| File Type | ✓ | File type of the document to add |
| Overwrite | ✓ | Passed to the save of the task list. Use `true`, since the task list already exists. |

**Example**

```text
AddTaskToTaskList("MonthEnd", "\TaskLists", "IncomeStatement", "\Forms\Actuals", "WebForm", "Form", "true");
```

### DeleteTaskFromTaskList

> [!NOTE]
> Removes a document from a task list and saves the task list. The entry is matched on name and path (ignoring case), document type and file type. If nothing matches, the task list is saved unchanged and the command still reports success.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Task List Name | ✓ | Name of the task list |
| Task List Path | ✓ | Folder the task list is stored in |
| Document Name | ✓ | Name of the document to remove |
| Document Path | ✓ | Folder the document is stored in |
| Document Type | ✓ | Type of the document to remove |
| File Type | ✓ | File type of the document to remove |
| Overwrite | ✓ | Passed to the save of the task list. Use `true`, since the task list already exists. |

**Example**

```text
DeleteTaskFromTaskList("MonthEnd", "\TaskLists", "IncomeStatement", "\Forms\Actuals", "WebForm", "Form", "true");
```

## Document and file types

These names are used by the Documents commands and by `ExtractDocument` and `LoadDocument`. They're matched ignoring case. An unrecognized name isn't rejected by JHAT; it's passed to HFM as "no type", so the command fails or matches nothing.

| Document Type | HFM document type |
| --- | --- |
| `WebForm` | Data form |
| `WebGrid` | Data grid |
| `Journal` | Journal report |
| `Intercompany` | Intercompany report |
| `ICTransaction` | IC transaction report |
| `ICMatchAccount` | IC matching report by account |
| `ICMatchID` | IC matching report by transaction ID |
| `ICMatchTemplate` | IC matching template |
| `DataExplorer` | Data Explorer report |
| `Workspace` | Task list |
| `Task` | Task |
| `Custom` | Custom document |
| `Folder` | Folder |
| `All` | All types |

| File Type | HFM file type |
| --- | --- |
| `Form` | Form definition |
| `Report` | Report definition |
| `XML` | XML (e.g. task lists) |
| `HTML` | Report HTML |
| `ReportXML` | Report XML |
| `Custom` | Custom file |
| `Folder` | Folder |
| `All` | All file types |

Common pairs are `WebForm` / `Form` for data forms and `Workspace` / `XML` for task lists.
