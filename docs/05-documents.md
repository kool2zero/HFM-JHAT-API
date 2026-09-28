# JHAT Commands: Documents

[← Back to index](../README.md)

#### Overview

These JHAT Commands are related to document management

#### Commands

<details id="bkmrk-EnumDocuments-"><summary>EnumDocuments</summary>

<p class="callout info">Get a list of all the documents in a defined path</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Document Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Document Type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Document File type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Document File type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Show Private</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Show Private</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr></tbody></table>

**Example**

```dart
EnumDocuments(" Path"," Document Type"," Document File type"," Show Private"," Output File Path");
```

</details><details id="bkmrk-EnumTasksUnderTaskList-"><summary>EnumTasksUnderTaskList</summary>

<p class="callout info">Get a List of all tasks under a task list</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">TaskList Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">TaskList Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">OutFile</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">OutFile</td></tr></tbody></table>

**Example**

```dart
EnumTasksUnderTaskList("Path"," TaskList Name"," OutFile");
```

</details><details id="bkmrk-DeleteDocument-"><summary>DeleteDocument</summary>

<p class="callout info">Delete a document</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Doc name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Doc name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Doc Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Doc Type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Folder</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Folder</td></tr></tbody></table>

**Example**

```dart
DeleteDocument("Doc name"," Doc Type"," File Type"," Folder");
```

</details><details id="bkmrk-CreateTaskList-"><summary>CreateTaskList</summary>

<p class="callout info">Create a Task List</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security Class</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Security Class</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">isPrivate</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">isPrivate</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Overwrite</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Overwrite</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Location</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Location</td></tr></tbody></table>

**Example**

```dart
CreateTaskList("name"," Description"," Security Class"," isPrivate"," Overwrite"," Location");
```

</details><details id="bkmrk-AddTaskToTaskList-"><summary>AddTaskToTaskList</summary>

<p class="callout info">Add Task to a Task List</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">task list name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">task list name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">task list path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">task list path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">doc name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">doc name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">doc path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">doc path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">doc type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">doc type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">file type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">file type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">overWrite</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">overWrite</td></tr></tbody></table>

**Example**

```dart
AddTaskToTaskList("task list name "," task list path"," doc name"," doc path"," doc type"," file type"," overWrite");
```

</details><details id="bkmrk-DeleteTaskFromTaskList-"><summary>DeleteTaskFromTaskList</summary>

<p class="callout info">Delete a task from the task list</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">task list name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">task list name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">task list path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">task list path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">doc name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">doc name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">doc path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">doc path</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">doc type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">doc type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">file type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">file type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">overWrite</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">overWrite</td></tr></tbody></table>

**Example**

```dart
DeleteTaskFromTaskList("task list name "," task list path"," doc name"," doc path"," doc type"," file type"," overWrite");
```

</details>
