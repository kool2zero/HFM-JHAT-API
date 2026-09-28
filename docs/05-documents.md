# JHAT Commands: Documents

[← Back to index](../README.md)

#### Overview

These JHAT Commands are related to document management

- **Folders:** pass `\` for the root folder of Document Manager.
- **Document Type** and **File Type:** names of HFM document types and file types (for example, a task list is a Workspace document with an XML file type). JHAT converts them in a helper class that wasn't part of the decompiled source reviewed, so the exact accepted spellings aren't documented here.
- **true/false parameters:** `true` (any case) means true. Any other value means false.
- **Task lists:** stored in Document Manager as Workspace documents with the XML file type.

#### Commands

<details id="bkmrk-EnumDocuments-"><summary>EnumDocuments</summary>

<p class="callout info">Lists the documents in a Document Manager folder and writes them to a UTF-8 file, one `name;description` line per document.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Path | ✓ | Folder to list. `\` for the root folder. |
| Document Type | ✓ | Type of document to list |
| Document File Type | ✓ | File type of document to list |
| Show Private | ✓ | `true`: include private documents. Otherwise only public documents are listed. |
| Output File Path | ✓ | Local file to write. Overwritten if it exists. |

**Example**

```dart
EnumDocuments("\", "<Document Type>", "<File Type>", "false", "C:\Output\documents.txt");
```

</details><details id="bkmrk-EnumTasksUnderTaskList-"><summary>EnumTasksUnderTaskList</summary>

<p class="callout info">Reads a task list and writes its XML definition, including the documents it contains, to a UTF-8 file.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Path | ✓ | Folder the task list is stored in |
| Task List Name | ✓ | Name of the task list |
| Output File Path | ✓ | Local file to write the XML to. Overwritten if it exists. |

**Example**

```dart
EnumTasksUnderTaskList("\TaskLists", "MonthEnd", "C:\Output\MonthEnd.xml");
```

</details><details id="bkmrk-DeleteDocument-"><summary>DeleteDocument</summary>

<p class="callout info">Deletes a document from Document Manager.</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Document Name | ✓ | Name of the document |
| Document Type | ✓ | Type of the document |
| File Type | ✓ | File type of the document |
| Folder | ✓ | Folder the document is stored in. `\` for the root folder. |

**Example**

```dart
DeleteDocument("MonthEnd", "<Document Type>", "<File Type>", "\TaskLists");
```

</details><details id="bkmrk-CreateTaskList-"><summary>CreateTaskList</summary>

<p class="callout info">Creates an empty task list owned by the logged-on user. Use `AddTaskToTaskList` to add documents to it.</p>

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

```dart
CreateTaskList("MonthEnd", "Month end tasks", "[Default]", "false", "true", "\TaskLists");
```

</details><details id="bkmrk-AddTaskToTaskList-"><summary>AddTaskToTaskList</summary>

<p class="callout info">Adds an existing document to the end of a task list and saves the task list.</p>

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

```dart
AddTaskToTaskList("MonthEnd", "\TaskLists", "IncomeStatement", "\Forms\Actuals", "<Document Type>", "<File Type>", "true");
```

</details><details id="bkmrk-DeleteTaskFromTaskList-"><summary>DeleteTaskFromTaskList</summary>

<p class="callout info">Removes a document from a task list and saves the task list. The entry is matched on name and path (ignoring case), document type and file type. If nothing matches, the task list is saved unchanged and the command still reports success.</p>

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

```dart
DeleteTaskFromTaskList("MonthEnd", "\TaskLists", "IncomeStatement", "\Forms\Actuals", "<Document Type>", "<File Type>", "true");
```

</details>
