# JHAT in HFM



# Automation with JHAT

#### Overview

> Adapted from: [https://neonn.com/alwayson/using-jhat-automate-hfm-tasks/](https://neonn.com/alwayson/using-jhat-automate-hfm-tasks/)

The `JHAT` tool is another way to automatize tasks using a batch file and the HFM API. `JHAT` offers the opportunity to use any scheduler to launch HFM tasks and provide a better flexibility than Task Flows.

#### How does it work?

`JHAT` utility is present in the path hereunder:

`E:\Oracle\Middleware\EPMSystem11R1\products\FinancialManagement\Server\jhat.bat`

The batch file embeds all libraries, paths and other references to execute HFM tasks.

Before the first run, it’ mandatory to create `setenv.cmd` file and set the parameter `EPM_ORACLE_INSTANCE_FOR_JHAT` to point to the EPM instance:



#### JHAT usage

A text file provides the tasks to be executed against HFM. Basically, the structure of the file is as below:

```dart
Logon()
OpenApplication()
SetPOV()
Consolidate() '(or other HFM function)'
CloseApplication()
Logout()
```

**Example:**



<p class="callout info">In most cases, you will need to call the `Logon`, `OpenApplication`, `CloseApplication` and `Logout` commands as part of the script execution.</p>

<p class="callout info">Certain commands will necessitate running the `SetPOV` command.</p>

<p class="callout warning">The JHAT API is not fully documented by Oracle. Commands used are based on examples from others.</p>

You only have to provide the file previously create as argument and call the utility to run the task:

```shell
jhat.bat -I E:\JHAT\test.txt
```

Use `jhat.bat -H` command to explore the available options:



<p class="callout info">This utility can be used to launch consolidations, data load, data extraction, etc...</p>

# JHAT Commands:  Administration

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

# JHAT Commands: Application

#### Overview

These JHAT Commands will handle the application.

#### Commands

<details id="bkmrk-setpov-sets-the-poin"><summary>SetPOV / SetPOVName</summary>

<p class="callout info">Sets the Point of View (POV) for the commands to follow.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 454.484px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 19.0798%; height: 29.7969px;">**Parameter**</td><td style="width: 15.875%; height: 29.7969px;">**Mandatory**</td><td style="width: 64.9098%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Scenario</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Scenario</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Year</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Year</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Period</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Period

<p class="callout info">Should be a base</p>

</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">View</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">View</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Entity</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Entity

<p class="callout info">Can use member lists</p>

</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Value</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Value</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Account</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Account</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">ICP</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Intercompany Partner</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Custom 1</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Custom 1</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Custom 2</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Custom 2</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Custom 3</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Custom 3</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Custom 4</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Custom 4</td></tr></tbody></table>

**Example**

```dart
SetPOV("ACTatACIFRS","2023","DEC","YTD","TGROUP","<Entity Currency>","TOTNI","[ICP Top]","TOTC1","TOTC2","TOTC3","TOTC4");
```

</details><details id="bkmrk-setpovextdim-sets-th"><summary>SetPOVExtDim</summary>

<p class="callout info">Sets the Point of View (POV) for the commands to follow.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 112.344px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 19.0798%; height: 29.7969px;">**Parameter**</td><td style="width: 15.875%; height: 29.7969px;">**Mandatory**</td><td style="width: 64.9098%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 57.7812px;"><td style="width: 19.0798%; height: 57.7812px;">POV</td><td style="width: 15.875%; height: 57.7812px;">✓

</td><td style="width: 64.9098%; height: 57.7812px;">Point of View in String Syntax

e.g `S#ACTatACIFRS.E#TGROUPCONT.Y#2023.P#DEC`

</td></tr><tr style="height: 24.7656px;"><td style="width: 19.0798%; height: 24.7656px;">Member Display Type</td><td style="width: 15.875%; height: 24.7656px;">✓

</td><td style="width: 64.9098%; height: 24.7656px;">Whether you are providing the ID of the member or the name.

- SHOWIDS
- SHOWNAMES

</td></tr></tbody></table>

**Example**

```dart
SetPOVExtDim("S#ACTatACIFRS.Y#2023.P#DEC.W#YTD.E#TGROUP.V#<Entity Currency>.A#TOTNI.I#[ICP Top].C1#TOTC1.C2#TOTC2.C3#TOTC3.C4#TOTC4","SHOWNAMES");
```

</details><details id="bkmrk-logon-logs-into-hfm-"><summary>Logon</summary>

<p class="callout info">Logs into HFM based on the environment you are in.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 64px; width: 94.8718%;"><tbody><tr><td style="width: 19.0798%;">**Parameter**</td><td style="width: 15.875%;">**Mandatory**</td><td style="width: 64.9098%;">**Comment**</td></tr><tr><td style="width: 19.0798%;">Unused</td><td style="width: 15.875%;"></td><td style="width: 64.9098%;">Does not appear to be used but should be True or False</td></tr><tr><td style="width: 19.0798%;">Domain</td><td style="width: 15.875%;"></td><td style="width: 64.9098%;">Login Domain</td></tr><tr><td style="width: 19.0798%;">Username</td><td style="width: 15.875%;">✓

</td><td style="width: 64.9098%;">Login User Name</td></tr><tr><td style="width: 19.0798%;">Password</td><td style="width: 15.875%;">✓

</td><td style="width: 64.9098%;">Login Password</td></tr></tbody></table>

**Example**

```dart
Logon("false", "", "user", "password");
```

</details><details id="bkmrk-logout-logs-out-of-h"><summary>Logout</summary>

<p class="callout info">Logs out of HFM</p>

**Input**

None

**Example**

```dart
Logout();
```

</details><details id="bkmrk-deleteapplication-de"><summary>DeleteApplication</summary>

<p class="callout info">Deletes the Application from the Server</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 95.6094px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 19.0798%; height: 29.7969px;">**Parameter**</td><td style="width: 15.875%; height: 29.7969px;">**Mandatory**</td><td style="width: 64.9098%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Server</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">Server or Cluster to run the command</td></tr><tr style="height: 30.4219px;"><td style="width: 19.0798%; height: 30.4219px;">Application</td><td style="width: 15.875%; height: 30.4219px;">✓

</td><td style="width: 64.9098%; height: 30.4219px;">Application to be deleted.

</td></tr></tbody></table>

**Example**

```dart
DeleteApplication("Server","Application");
```

</details><details id="bkmrk-createapplicationext"><summary>CreateApplicationExtDim</summary>

<p class="callout info">Creates an Application on the Server</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--6" style="height: 295.578px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 22.4582%; height: 29.7969px;">**Parameter**</td><td style="width: 12.4538%; height: 29.7969px;">**Mandatory**</td><td style="width: 64.9526%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.3906px;"><td style="width: 22.4582%; height: 35.3906px;">Server</td><td style="width: 12.4538%; height: 35.3906px;">✓

</td><td style="width: 64.9526%; height: 35.3906px;">Server or Cluster to run the command</td></tr><tr style="height: 35.3906px;"><td style="width: 22.4582%; height: 35.3906px;">Application</td><td style="width: 12.4538%; height: 35.3906px;">✓

</td><td style="width: 64.9526%; height: 35.3906px;">Application to be created.

</td></tr><tr style="height: 35.3906px;"><td style="width: 22.4582%; height: 35.3906px;">Application Description</td><td style="width: 12.4538%; height: 35.3906px;">✓

</td><td style="width: 64.9526%; height: 35.3906px;">Description of the Application

</td></tr><tr style="height: 35.3906px;"><td style="width: 22.4582%; height: 35.3906px;">Profile File</td><td style="width: 12.4538%; height: 35.3906px;">✓

</td><td style="width: 64.9526%; height: 35.3906px;">Path to Profile File

<p class="callout info">Creating a Profile File: [https://docs.oracle.com/cd/E57185\_01/HFMAD/ch02s04.html](https://docs.oracle.com/cd/E57185_01/HFMAD/ch02s04.html)</p>

</td></tr><tr style="height: 35.3906px;"><td style="width: 22.4582%; height: 35.3906px;">Local Storage</td><td style="width: 12.4538%; height: 35.3906px;">✓

</td><td style="width: 64.9526%; height: 35.3906px;">Where the application should be stored

</td></tr><tr style="height: 35.3906px;"><td style="width: 22.4582%; height: 35.3906px;">Project Name</td><td style="width: 12.4538%; height: 35.3906px;">✓

</td><td style="width: 64.9526%; height: 35.3906px;">Project Name

</td></tr><tr style="height: 35.3906px;"><td style="width: 22.4582%; height: 35.3906px;">Web URL</td><td style="width: 12.4538%; height: 35.3906px;">✓

</td><td style="width: 64.9526%; height: 35.3906px;">URL to App

</td></tr><tr style="height: 18.0469px;"><td style="width: 22.4582%; height: 18.0469px;">Application Type</td><td style="width: 12.4538%; height: 18.0469px;">✓

</td><td style="width: 64.9526%; height: 18.0469px;">Type of Application:

- `STANDARD_CONSOL` (Consolidation app)
- `TAX_PROV` (Tax App)

</td></tr></tbody></table>

**Example**

```dart
CreateApplicationExtDim("Server","Application","ApplicationDescription","ProfilePath","StorageFolder","ProjectName","http://myServer:80/HFM","6");
```

</details><details id="bkmrk-openapplication-open"><summary>OpenApplication</summary>

<p class="callout info">Opens the specified application</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 64px; width: 94.8718%;"><tbody><tr><td style="width: 19.0798%;">**Parameter**</td><td style="width: 15.875%;">**Mandatory**</td><td style="width: 64.9098%;">**Comment**</td></tr><tr><td style="width: 19.0798%;">Cluster</td><td style="width: 15.875%;">✓

</td><td style="width: 64.9098%;">Cluster or Server to Open Application On</td></tr><tr><td style="width: 19.0798%;">Application</td><td style="width: 15.875%;">✓

</td><td style="width: 64.9098%;">Application to Open</td></tr></tbody></table>

**Example**

```dart
OpenApplication("Cluster","Application");
```

</details><details id="bkmrk-closeapplication-clo"><summary>CloseApplication</summary>

<p class="callout info">Closes application that was opened in the session</p>

**Input**

None

**Example**

```dart
CloseApplication();
```

</details><details id="bkmrk-shutdownapplication-"><summary>shutdownApplication</summary>

<p class="callout info">Shuts down the application on all the Jhsxserver instances across all the clusters and servers.</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--7" style="height: 95.6094px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 19.0798%; height: 29.7969px;">**Parameter**</td><td style="width: 15.875%; height: 29.7969px;">**Mandatory**</td><td style="width: 64.9098%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 30.4219px;"><td style="width: 19.0798%; height: 30.4219px;">Application</td><td style="width: 15.875%; height: 30.4219px;">✓

</td><td style="width: 64.9098%; height: 30.4219px;">Application to be shutdown.

</td></tr></tbody></table>

**Example**

```dart
shutdownApplication("Application");
```

</details><details id="bkmrk-deleteallapplication"><summary>deleteAllApplications</summary>

<p class="callout info">Deletes all registered applications</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--8" style="height: 95.6094px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 19.0798%; height: 29.7969px;">**Parameter**</td><td style="width: 15.875%; height: 29.7969px;">**Mandatory**</td><td style="width: 64.9098%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 30.4219px;"><td style="width: 19.0798%; height: 30.4219px;">Server</td><td style="width: 15.875%; height: 30.4219px;">✓

</td><td style="width: 64.9098%; height: 30.4219px;">Server to delete applications on

</td></tr></tbody></table>

**Example**

```dart
DeleteAllApplications("Server");
```

</details><details id="bkmrk-copyapplication-copi"><summary>CopyApplication</summary>

<p class="callout info">Copies one application to another</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--9" style="height: 291.734px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 21.9177%; height: 29.7969px;">**Parameter**</td><td style="width: 12.9944%; height: 29.7969px;">**Mandatory**</td><td style="width: 65.088%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.3906px;"><td style="width: 21.9177%; height: 35.3906px;">Source Application</td><td style="width: 12.9944%; height: 35.3906px;">✓

</td><td style="width: 65.088%; height: 35.3906px;">The application to copy from

</td></tr><tr style="height: 35.3906px;"><td style="width: 21.9177%; height: 35.3906px;">Target Application</td><td style="width: 12.9944%; height: 35.3906px;">✓

</td><td style="width: 65.088%; height: 35.3906px;">The new application

</td></tr><tr style="height: 49.5938px;"><td style="width: 21.9177%; height: 49.5938px;">Application Description</td><td style="width: 12.9944%; height: 49.5938px;">✓

</td><td style="width: 65.088%; height: 49.5938px;">New application description

</td></tr><tr style="height: 35.3906px;"><td style="width: 21.9177%; height: 35.3906px;">Cluster</td><td style="width: 12.9944%; height: 35.3906px;">✓

</td><td style="width: 65.088%; height: 35.3906px;">Cluster to copy application on

</td></tr><tr style="height: 35.3906px;"><td style="width: 21.9177%; height: 35.3906px;">Project Name</td><td style="width: 12.9944%; height: 35.3906px;">✓

</td><td style="width: 65.088%; height: 35.3906px;">Project Name

</td></tr><tr style="height: 35.3906px;"><td style="width: 21.9177%; height: 35.3906px;">Copy Audit Tables</td><td style="width: 12.9944%; height: 35.3906px;">✓

</td><td style="width: 65.088%; height: 35.3906px;">Copy the audit tables?

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 21.9177%; height: 35.3906px;">Copy Data Tables</td><td style="width: 12.9944%; height: 35.3906px;">✓

</td><td style="width: 65.088%; height: 35.3906px;">Copy the data tables?

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
CopyApplication("Original Application Name", "New Application Name", "Application Description", "Cluster","Project Name", "Copy Audit Tables", "Copy Data Tables");
```

</details><details id="bkmrk-setpreferences-sets-"><summary>SetPreferences</summary>

<p class="callout info">Sets Preferences of Application</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--10" style="height: 224.156px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 27.6049%; height: 29.7969px;">**Parameter**</td><td style="width: 22.172%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.2231%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 27.6049%; height: 35.375px;">Application</td><td class="align-center" style="width: 22.172%; height: 35.375px;">✓</td><td style="width: 50.2231%; height: 35.375px;">Application to set preferences on</td></tr><tr style="height: 10px;"><td style="width: 27.6049%; height: 10px;">Cluster</td><td class="align-center" style="width: 22.172%; height: 10px;">✓</td><td style="width: 50.2231%; height: 10px;">Cluster to set preferences on</td></tr><tr style="height: 29.7969px;"><td style="width: 27.6049%; height: 29.7969px;">Language</td><td class="align-center" style="width: 22.172%; height: 29.7969px;">✓</td><td style="width: 50.2231%; height: 29.7969px;">Language Preference

- `English`
- `French`
- `German`
- `Italian`
- `Japanese`

</td></tr><tr style="height: 29.7969px;"><td style="width: 27.6049%; height: 29.7969px;">Decimal Character</td><td class="align-center" style="width: 22.172%; height: 29.7969px;">✓</td><td style="width: 50.2231%; height: 29.7969px;">Decimal Preference</td></tr><tr style="height: 29.7969px;"><td style="width: 27.6049%; height: 29.7969px;">Thousands Character</td><td class="align-center" style="width: 22.172%; height: 29.7969px;">✓</td><td style="width: 50.2231%; height: 29.7969px;">Thousands delimiter

</td></tr><tr style="height: 29.7969px;"><td style="width: 27.6049%; height: 29.7969px;">Save in Unicode Format</td><td class="align-center" style="width: 22.172%; height: 29.7969px;">✓</td><td style="width: 50.2231%; height: 29.7969px;">Save in Unicode

- `true`
- `false`

</td></tr><tr style="height: 29.7969px;"><td style="width: 27.6049%; height: 29.7969px;">Use Doc Manager as Default</td><td class="align-center" style="width: 22.172%; height: 29.7969px;">✓</td><td style="width: 50.2231%; height: 29.7969px;">Open Document Manager by Default

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
SetPreferences("Application Name", "Cluster","Language", "Decimal Character", "Thousands Character", "Save in Unicode format", "Use DocManager as default Page");
```

</details><details id="bkmrk-getpreferences-gets-"><summary>GetPreferences</summary>

<p class="callout info">Gets the preferences of an application and writes them to an output file</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--11" style="height: 224.156px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 27.6049%; height: 29.7969px;">**Parameter**</td><td style="width: 22.172%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.2231%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 27.6049%; height: 35.375px;">Application</td><td class="align-center" style="width: 22.172%; height: 35.375px;">✓</td><td style="width: 50.2231%; height: 35.375px;">Application to set preferences on</td></tr><tr style="height: 10px;"><td style="width: 27.6049%; height: 10px;">Cluster</td><td class="align-center" style="width: 22.172%; height: 10px;">✓</td><td style="width: 50.2231%; height: 10px;">Cluster to set preferences on</td></tr><tr style="height: 29.7969px;"><td style="width: 27.6049%; height: 29.7969px;">Output File Path</td><td class="align-center" style="width: 22.172%; height: 29.7969px;">✓</td><td style="width: 50.2231%; height: 29.7969px;">Path to output file

</td></tr></tbody></table>

**Example**

```dart
GetPreferences("Application Name", "Cluster","Output File Path");
```

</details><details id="bkmrk-modifyapplication-mo"><summary>ModifyApplication</summary>

<p class="callout info">[Modify the application](https://docs.oracle.com/cd/E57185_01/OHFMA/help_modifyapp.htm#OHFMA-applications_508)</p>

<p class="callout danger">Be careful when running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--12" style="height: 392.297px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Application</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Application to set preferences on</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Cluster</td><td class="align-center" style="width: 18.1326%; height: 29.7969px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Cluster to set preferences on</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Number of Years</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Number of years the application should have from beginning

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Enable Process Control</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Enable Process Control

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Enable Manage Ownership</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Enable Manage Ownership

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Enable Journals</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Enable Journals

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Enable Data Management</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Enable Data Management

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Enable Task Audit</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Enable Task Audit

- `true`
- `false`

</td></tr><tr style="height: 49.5938px;"><td style="width: 31.6644%; height: 49.5938px;">Enable Intercompany Transactions</td><td class="align-center" style="width: 18.1326%; height: 49.5938px;">✓</td><td style="width: 50.203%; height: 49.5938px;">Enable Intercompany Transactions

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Enable Equity Pickup</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Enable Equity Pickup

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ModifyApplication("Application Name","Cluster Name", "No Of Years", "EnableProcessControl", "EnableManageOwnership","EnableJournals", "EnableDataManagement", "EnableAuditTasks", "EnableIntercompanyTransactions", "EnableEquityPickUp");
```

</details>

# JHAT Commands: Data Form

#### Overview

These commands are related to the Data Form

#### Commands

<details id="bkmrk-getform-get-the-data"><summary>GetForm</summary>

<p class="callout info">Get the data form and save it to an output file in HTML format.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--13" style="height: 392.297px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Path in document manager</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Path in Document Manager where Form is located</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Form Name</td><td class="align-center" style="width: 18.1326%; height: 29.7969px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Form Name to Get</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Output file

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Use the user POV</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Use the user POV

- `true`
    - Use POV set by `SetPOV`
- `false`
    - Use the POV defined in the form

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress Row Header Repeats</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Suppress Row Header Repeats

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress NoData Rows</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Suppress NoData Rows

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress Invalid Rows</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Suppress Invalid Rows

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress Column Header Repeats</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Suppress Column Header Repeats

- `true`
- `false`

</td></tr><tr style="height: 49.5938px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress NoData Column</td><td class="align-center" style="width: 18.1326%; height: 49.5938px;">✓</td><td style="width: 50.203%; height: 49.5938px;">Suppress NoData Column

- `true`
- `false`

</td></tr><tr style="height: 35.3906px;"><td style="width: 31.6644%; height: 35.3906px;">Suppress Invalid Column</td><td class="align-center" style="width: 18.1326%; height: 35.3906px;">✓</td><td style="width: 50.203%; height: 35.3906px;">Suppress Invalid Column

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
GetForm("Path in the document manager", "Form name", "Out file", "Use the user POV", "Supress row header repeats", "Supress NoData Rows", "Supress Zero Rows","Supress Invalid Rows", "Supress column header repeats", "Supress No data Columns", "Supress zero columns", "Supress Invalid Columns");
```

</details><details id="bkmrk-executeondemandrule-"><summary>ExecuteOnDemandRule</summary>

<p class="callout info">Execute an On Demand Rule based on Set POV</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Rule Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">On Demand Rule to Execute

- Must be a valid Rule
- Uses POV set by `SetPOV`

</td></tr></tbody></table>

**Example**

```dart
ExecuteOnDemandRule("RuleName");
```

</details>

# JHAT Commands: Data Grid

#### Overview

These JHAT Commands relate to the data grid.

> Data grids are a powerful feature in HFM (Hyperion Financial Management) that allow users to view and manipulate financial data in a flexible and dynamic manner. Essentially, a data grid is a spreadsheet-like interface that displays financial data organized by dimensions such as time, accounts, entities, and scenarios.
> 
> With data grids in HFM, users can perform a range of tasks such as entering, editing, and aggregating data, performing calculations and consolidations, and exporting data for analysis or reporting. They can also customize the appearance and behavior of the data grid by selecting columns, filtering data, and applying formatting options.
> 
> Data grids in HFM offer several benefits for financial reporting and analysis. They provide a highly interactive and user-friendly interface for accessing and manipulating financial data, which can improve efficiency and accuracy in financial reporting processes. They also allow for real-time data analysis and scenario planning, which can help organizations to make informed financial decisions and respond quickly to changes in the business environment.
> 
> Overall, data grids are an essential tool for any organization using HFM for financial management and reporting, providing a powerful and flexible way to manage financial data and support effective decision-making.

#### Commands

<details id="bkmrk-DefineGrid-"><summary>DefineGrid</summary>

<p class="callout info">The define Grid Command will set up a grid with a POV that can be used in later commands.</p>

<p class="callout info">Should call `SetPOV` prior to running this function to set up the rest of the POV.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Row Dimension</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Row Dimension</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Row List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Row List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Row Top Member</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Row Top Member</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Column Dimension</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Column Dimension</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Column List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Column List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Column Top Member</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Column Top Member</td></tr></tbody></table>

**Example**

```dart
DefineGrid("Row Dimension"," Row List"," Row Top Member"," Column Dimension"," Column List"," Column Top Member");
DefineGrid("Account","[Hierarchy]","","Period","[Hierarchy]","");
```

</details><details id="bkmrk-DefineGridExtDim-"><summary>DefineGridExtDim / DefineDataRetrieval</summary>

<p class="callout info">Defines a Grid by passing in Rows and Dimensions. The grid can be used in later commands.</p>

<p class="callout info">Both commands appear to call the same API codes.</p>

<p class="callout info">Should call `SetPOV` prior to running this function to set up the rest of the POV.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Row Dimensions</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Row Dimensions</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Column Dimensions</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Column Dimensions</td></tr></tbody></table>

**Example**

```dart
DefineGridExtDim("Account","ICP");
DefineDataRetrieval("Account","ICP");

```

</details><details id="bkmrk-GetGrid-"><summary>GetGrid</summary>

<p class="callout info">Extract a previously defined grid to a flat file.</p>

<p class="callout warning">Must run `SetPOV` and `DefineGrid` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Location to store the output file</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type of Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type of Extract

- `VALUE` - Values in Grid
- `STATUS` - Calculation Status
- `NOTHING` - Returns how many rows would be retrieved.
- `DROID` - Unknown
- `CALCSTATUS` - Calculation Status
- `PROCESS` - Process Level
- `STATUSHEX` - Cell Status in Hex

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Direction to Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Direction of Extract

- `UP` - If number of rows to extract is set, it will start from the top.
- `DOWN` - If number of rows to extract is set, it will start from the bottom.
- `ALL` - Will start from the top.

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Number of Rows To Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Number of Rows To Extract</td></tr></tbody></table>

**Example**

```dart
GetGrid("Output File"," Type of Extract"," Direction to Extract"," Number of Rows To Extract");
```

</details><details id="bkmrk-GetGridExtDim-"><summary>GetGridExtDim / GetCellsExtDim</summary>

<p class="callout info">Extract a previously defined grid to a flat file.</p>

<p class="callout info">Both commands call the same Java code.</p>

<p class="callout warning">Must run `SetPOV` and `DefineGrid` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Location to store the output file</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type of Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type of Extract

- `VALUE` - Values in Grid
- `STATUS` - Calculation Status
- `NOTHING` - Returns how many rows would be retrieved.
- `DROID` - Unknown
- `CALCSTATUS` - Calculation Status
- `PROCESS` - Process Level
- `STATUSHEX` - Cell Status in Hex

</td></tr></tbody></table>

**Example**

```dart
GetGridExtDim("<Output File Path>", "<Type of Extract>");
```

</details><details id="bkmrk-SetCell-"><summary>SetCell</summary>

<p class="callout info">Sets the value of a Cell based on a POV. Cell will have to be inputable.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Value</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Value</td></tr></tbody></table>

**Example**

```dart
SetCell("999999");
```

</details><details id="bkmrk-GetCell-"><summary>GetCell</summary>

<p class="callout info">Gets the value of a Cell based on a POV. </p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
GetCell();
```

Returns the following information to the log:

- Displayed Data
- Full Resolution data
- Stored data
- Calculation status
- Cell status

</details><details id="bkmrk-GetCellInfo-"><summary>GetCellInfo</summary>

<p class="callout info">Gets the Cell Info and Outputs it to the log.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
GetCellInfo();
```

Returns the following information to the log:

```sql
---- Point of view ----
Process Unit
POV Detail
View
Phase
Account Calculation Attribute
---- Status ----
Calculation status
Process Level
Cell status
Cell security class
---- Data ----
Scale
Num Decimals
Displayed Data
Full Resolution data
Stored data
```

</details><details id="bkmrk-Lock-"><summary>Lock</summary>

<p class="callout info">Runs the [Lock](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s09.html) command on the selected POV</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
Lock();
```

</details><details id="bkmrk-Unlock-"><summary>Unlock</summary>

<p class="callout info">Runs the [Unlock](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s10.html) command on the selected POV</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
Unlock();
```

</details><details id="bkmrk-Translate-"><summary>Translate</summary>

<p class="callout info">Runs the [Translate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s05.html) command on the selected POV</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
Translate();
```

</details><details id="bkmrk-Allocate-"><summary>Allocate</summary>

<p class="callout info">Runs the [Allocate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s07.html) command on the selected POV</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

None

**Example**

```dart
Allocate();
```

</details><details id="bkmrk-consolidate-runs-the"><summary>Consolidate</summary>

<p class="callout info">Runs the [Consolidate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s07.html) command based on the `SetPOV`.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 454.484px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 19.0798%; height: 29.7969px;">**Parameter**</td><td style="width: 15.875%; height: 29.7969px;">**Mandatory**</td><td style="width: 64.9098%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.3906px;"><td style="width: 19.0798%; height: 35.3906px;">Consolidation Type</td><td style="width: 15.875%; height: 35.3906px;">✓

</td><td style="width: 64.9098%; height: 35.3906px;">The type of consolidation to run:

- `Impacted`
- `AllWithData`
- `All`
- `EntityOnly` (Calculate Contribution)
- `ForceEntityOnly` (Force Calculate Contribution)

</td></tr></tbody></table>

**Example**

```dart
Consolidate("Impacted");
```

</details><details id="bkmrk-ChartLogic-"><summary>ChartLogic</summary>

<p class="callout info">Runs the [Calculate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s04.html) command based on the `SetPOV`.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Force Calculate</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Force Calculate

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ChartLogic("true");
```

</details><details id="bkmrk-SetCellTextEnhanced-"><summary>SetCellTextEnhanced</summary>

<p class="callout info">Sets the cell text for an intersection.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--6" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Text for the label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Text for the label</td></tr></tbody></table>

**Example**

```dart
SetCellTextEnhanced("Cell label"," Text for the label");
```

</details><details id="bkmrk-deleteCellTextEnhanced-"><summary>deleteCellTextEnhanced</summary>

<p class="callout info">Deletes Cell Text for an Intersection</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--7" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">What to Delete</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">What to Delete:

- `All`
- `Text`
- `Attachments`

</td></tr></tbody></table>

**Example**

```dart
deleteCellTextEnhanced("Cell label"," All or Text or Attachments;");
```

</details><details id="bkmrk-DetachCellDocument-"><summary>DetachCellDocument</summary>

<p class="callout info">Removes a document from the Cell</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--8" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Name</td></tr></tbody></table>

**Example**

```dart
DetachCellDocument("Cell Text Label","File Name");
```

</details><details id="bkmrk-AttachCellDocumentEnhanced-"><summary>AttachCellDocumentEnhanced \\ AttachCellDocument</summary>

<p class="callout info">Attach a document to the Cell</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--9" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 37.8843%; height: 29.7969px;">**Parameter**</td><td style="width: 11.9127%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">File Name</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Name</td></tr><tr><td style="width: 37.8843%;">Full Directory from Manage Documents</td><td class="align-center" style="width: 11.9127%;">✓</td><td style="width: 50.203%;">Full Directory from Manage Documents</td></tr></tbody></table>

**Example**

```dart
AttachCellDocumentEnhanced("<Cell Text Label>", "<File name>", "<Full Directory from Manage Documents>");
AttachCellDocument("<Cell Text Label>", "<File name with Full Directory>");
```

</details><details id="bkmrk-GetCellTextAttachmentsEnhanced-"><summary>GetCellTextAttachmentsEnhanced</summary>

<p class="callout info">Get Cell Text Attachments</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--10" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 37.8843%; height: 29.7969px;">**Parameter**</td><td style="width: 11.9127%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">Full Path to File Name</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Full Path to File Name</td></tr></tbody></table>

**Example**

```dart
GetCellTextAttachmentsEnhanced("<Cell Text Label or All>", "<Full Path to File Name>");
```

</details><details id="bkmrk-GetCellTextEnhanced-"><summary>GetCellTextEnhanced</summary>

<p class="callout info">Get Cell Text Attachments</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--11" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 37.8843%; height: 29.7969px;">**Parameter**</td><td style="width: 11.9127%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">Cell label</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell label</td></tr><tr style="height: 35.375px;"><td style="width: 37.8843%; height: 35.375px;">Full Path to File Name</td><td class="align-center" style="width: 11.9127%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Full Path to File Name</td></tr></tbody></table>

**Example**

```dart
GetCellTextEnhanced("<Cell Text Label or All>", "<Full Path to File Name>");
```

</details><details id="bkmrk-LockICEntity-"><summary>LockICEntity</summary>

<p class="callout info">Locks an entity for a given scenario, year, and period.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--12" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity</td></tr></tbody></table>

**Example**

```dart
LockICEntity("Scenario"," Year"," Period"," Entity");
```

</details><details id="bkmrk-UnlockICEntity-"><summary>UnlockICEntity</summary>

<p class="callout info">Unlocks an entity for a given scenario, year, and period.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--13" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity</td></tr></tbody></table>

**Example**

```dart
UnlockICEntity("Scenario"," Year"," Period"," Entity");
```

</details><details id="bkmrk-GetCellHistory-"><summary>GetCellHistory</summary>

<p class="callout info">Gets the history of an intersection.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--15" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output file path</td></tr></tbody></table>

**Example**

```dart
GetCellHistory("output file path");
```

</details><details id="bkmrk-GetCellEntityDetails-"><summary>GetCellEntityDetails</summary>

<p class="callout info">Gets the Cell Entity Details</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--16" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output file path</td></tr></tbody></table>

**Example**

```dart
GetCellEntityDetails("output file path");
```

</details><details id="bkmrk-GetProcessControlGrid-"><summary>GetProcessControlGrid</summary>

<p class="callout info">Output the process control grid to a file.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--17" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File to output the Grid to</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;"> Type of Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type of Extract

- `VALUE` - Values in Grid
- `STATUS` - Calculation Status
- `NOTHING` - Returns how many rows would be retrieved.
- `DROID` - Unknown
- `CALCSTATUS` - Calculation Status
- `PROCESS` - Process Level
- `STATUSHEX` - Cell Status in Hex

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Direction to Extract

</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Direction of Extract

- `UP` - If number of rows to extract is set, it will start from the top.
- `DOWN` - If number of rows to extract is set, it will start from the bottom.
- `ALL` - Will start from the top.

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Number of Rows To Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Number of Rows To Extract</td></tr></tbody></table>

**Example**

```dart
GetProcessControlGrid("Output File"," Type of Extract"," Direction to Extract"," Number of Rows To Extract");
```

</details><details id="bkmrk-GetSourceTransactions-"><summary>GetSourceTransactions</summary>

<p class="callout info">Returns information on source transactions for a cell in a statutory application.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

The following information is returned:

- Header information, such as the dimension members that define the cell, the current username, the cell’s data, and so on. This information is returned in two arrays that have a one-to-one correspondence; one array contains labels for the header information, the other contains the values that correspond to the labels.
- Detailed information on the transactions, such as the dimension members and data for the transactions. This information is contained in several arrays; the arrays contain one item per transaction, and have a one-to-one correspondence.
- The sums of the cell’s source and destination transaction amounts.

**Input**

<table border="1" id="bkmrk-parameter-mandatory--18" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;"> Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;"> Output File Path </td></tr></tbody></table>

**Example**

```dart
GetSourceTransactions("Output File Path");
```

</details><details id="bkmrk-GetDestinationTransactions-"><summary>GetDestinationTransactions</summary>

<p class="callout info">Returns information on destination transactions for a cell in a statutory application.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

The following information is returned:

- Header information, such as the dimension members that define the cell, the current username, the cell’s data, and so on. This information is returned in two arrays that have a one-to-one correspondence; one array contains labels for the header information, the other contains the values that correspond to the labels.
- Detailed information on the transactions, such as the dimension members and data for the transactions. This information is contained in several arrays; the arrays contain one item per transaction and have a one-to-one correspondence.
- The sums of the cell’s source and destination transaction amounts.

**Input**

<table border="1" id="bkmrk-parameter-mandatory--19" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;"> Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;"> Output File Path </td></tr></tbody></table>

**Example**

```dart
GetDestinationTransactions("Output File Path");
```

</details><details id="bkmrk-GetLineItemDetail-"><summary>GetLineItemDetail</summary>

<p class="callout info">In the Entity Detail Report, the option to display line item detail is only applicable for the scenario and account defined to use line item detail. Line item detail information is available only for the Entity Currency Value dimension.</p>

<p class="callout warning">Must run `SetPOV` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--20" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr></tbody></table>

**Example**

```dart
GetLineItemDetail("Output File Path");
```

</details><details id="bkmrk-SetLineItemDetail-"><summary>SetLineItemDetail</summary>

<p class="callout info">Line item detail enables you to collect detailed information about accounts. This function sets the detail</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--21" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV Item List Number</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV Item List Number</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Cell Values Item List Number</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Cell Values Item List Number</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr></tbody></table>

**Example**

```dart
SetLineItemDetail("POV ITem List Number","Cell Values Item List Number","Description");
```

</details><details id="bkmrk-FilterProcessControlGrid-"><summary>FilterProcessControlGrid</summary>

<p class="callout info">Export Process Control Grid based on a Filter</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--22" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type of Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type of Extract

- `VALUE` - Values in Grid
- `STATUS` - Calculation Status
- `NOTHING` - Returns how many rows would be retrieved.
- `DROID` - Unknown
- `CALCSTATUS` - Calculation Status
- `PROCESS` - Process Level
- `STATUSHEX` - Cell Status in Hex

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Direction to Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Direction of Extract

- `UP` - If number of rows to extract is set, it will start from the top.
- `DOWN` - If number of rows to extract is set, it will start from the bottom.
- `ALL` - Will start from the top.

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Number of Rows To Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Number of Rows To Extract</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Phase</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phase to filter on

- All
- 1
- 2
- 3
- etc

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Review Level</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Review Level to filter on

- `ALL`
- `NOT STARTED`
- `FIRST PASS`
- `LEVEL 1`
- `LEVEL 2`
- `LEVEL 3`
- `LEVEL 4`
- `LEVEL 5`
- `LEVEL 6`
- `LEVEL 7`
- `LEVEL 8`
- `LEVEL 9`
- `LEVEL 10`
- `SUBMITTED`
- `APPROVED`
- `PUBLISHED`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Range</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Range

- `ALL`
- `AND ABOVE`
- `AND BELOW`
- `ONLY`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Show Pass/Fail</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Show Pass/Fail

- `PASS AND FAIL`
- `PASS ONLY`
- `FAIL ONLY`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Status</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Status

- `NODATA`
- `OK`
- `OK SC`
- `CH`
- `CN`
- `TR`
- `OK ND`
- `CH ND`
- `CN ND`
- `TR ND`
- `LOCKED`
- `ALL`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Data View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data View

- `Value`
- `Translation`
- `Contribution`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">SORT</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">SORT

- `Ascending`
- `Descending`

</td></tr></tbody></table>

**Example**

```dart
FilterProcessControlGrid("Output File Name"," Type of Extract"," Direction to Extract"," Number of Rows To Extract"," Phase"," Review Level","Range"," Show Pass/Fail"," Status"," Data View"," SORT");
```

</details><details id="bkmrk-DisplayProcessControlGrid-"><summary>DisplayProcessControlGrid</summary>

<p class="callout info">Output the Process Control Grid</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--23" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type of Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type of Extract

- `VALUE` - Values in Grid
- `STATUS` - Calculation Status
- `NOTHING` - Returns how many rows would be retrieved.
- `DROID` - Unknown
- `CALCSTATUS` - Calculation Status
- `PROCESS` - Process Level
- `STATUSHEX` - Cell Status in Hex

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Direction to Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Direction of Extract

- `UP` - If number of rows to extract is set, it will start from the top.
- `DOWN` - If number of rows to extract is set, it will start from the bottom.
- `ALL` - Will start from the top.

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Number of Rows To Extract</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Number of Rows To Extract</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Data View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data View

- `Value`
- `Translation`
- `Contribution`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Style</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Style

- `Tree`
- `<Blank>` (Default)

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity View

- `Label`
- `Description`
- `Both`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Active</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Active

- `Y`
- `N`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period View

- `All`
- <span style="font-family: Lucida Console, DejaVu Sans Mono, Ubuntu Mono, Monaco, monospace;"><span style="font-size: 11.76px; white-space: pre-wrap; background-color: rgb(180, 215, 255);">Single</span></span>

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Review Level Columns</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Review Level Columns.

<p class="callout info">Multiple selections can be comma delimited.</p>

- `REVIEW`
- `PASS`
- `VALIDATION`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Status Columns</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Status Columns

- `CALC`
- `JOURNAL`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">PhasesALL | Phase Number</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phases

<p class="callout info">Multiple selections can be comma delimited.</p>

- `ALL`
- `1`
- `2`
- `3`

</td></tr></tbody></table>

**Example**

```dart
DisplayProcessControlGrid("File Name"," Type of Extract"," Direction to Extract"," Number of Rows To Extract"," Data View"," Style"," Entity View"," ActiveY|N"," Period View "," Review Level Columns"," Status Columns"," PhasesALL | Phase Number");
```

</details><details id="bkmrk-GetReviewLevelSummary-"><summary>GetReviewLevelSummary</summary>

<p class="callout info">Output the Review Level Summary to a file.</p>

<p class="callout warning">Must run `SetPOV` and `DefineGrid` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--24" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Name</td></tr></tbody></table>

**Example**

```dart
GetReviewLevelSummary("File Name");
```

</details><details id="bkmrk-GetCalcStatusSummary-"><summary>GetCalcStatusSummary</summary>

<p class="callout info">Output Calculation Status Summary which shows the number of entities at each status.</p>

<p class="callout warning">Must run `SetPOV` and `DefineGrid` prior to running this command.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--25" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">DATA VIEW</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data View

- `Value`
- `Translation`
- `Contribution`

</td></tr></tbody></table>

**Example**

```dart
GetCalcStatusSummary("File Name","DATA VIEW");
```

</details><details id="bkmrk-GetValidationAccountInfo-"><summary>GetValidationAccountInfo</summary>

<p class="callout info">Get information on Validation Account</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--26" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Point of View</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Phase</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phase Number</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Data View</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Data View

- `Value`
- `Translation`
- `Contribution`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Zero</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Zero

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress NODATA</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress NODATA

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Formatted Data</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Formatted Data

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">OUTPUT file path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">OUTPUT file path</td></tr></tbody></table>

**Example**

```dart
GetValidationAccountInfo("POV"," PHASE NO."," DATA VIEW"," Suppress ZEROs"," Suppress NODATA"," Formatted Data"," OUTPUT file path");
```

</details><details id="bkmrk-GetCellStatus-"><summary>GetCellStatus</summary>

<p class="callout info">Get the Cell Status</p>

**Input**

None

**Example**

```dart
GetCellStatus("");
```

</details>

# JHAT Commands: Documents

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

# JHAT Commands:  EPU

#### Overview

These JHAT commands are related to Equity Pickup

Equity pickup (EPU) functionality enables you to revaluate the investments owned by a holding company. The purpose of the reevaluation is to adjust the investments in the Balance Sheet of the holding company to reflect the current value of the corresponding share in the equity of the subsidiary. The underlying principle of the equity pickup adjustment is to provide a fair picture of the value of the portfolio owned by the holding company.

Like most assets, investments are presented in the Balance Sheet at their historical cost. Investment amounts reflect acquisition prices. However, due to profit or loss incurred in the subsidiary since the acquisition, historical cost may differ from the actual value of the investment owned. In the case of a subsidiary in a foreign country, exchange currency fluctuations may also affect the value of the investment when translated into the holding company's currency. Equity pickup adjustments account for this difference.

An equity pickup adjustment replaces the historical cost with the actual value of the equity owned. In this respect, equity pickup is similar to the equity method in statutory consolidation.

Equity pickup adjustments are made in the local currency of the holding company, before any consolidation of this holding into the group. These adjustments belong to the holding company, independently from any ultimate parent entity.

For each company owned, the adjustment is expressed as follows:

```ini
Direct Ownership Percentage * Equity of Owned Entity
= Current Equity Value
- Investment
= Equity Pickup Adjustment
```

#### Commands

<details id="bkmrk-FilterEPUGrid-"><summary>FilterEPUGrid</summary>

<p class="callout info">Filter an EPU Grid</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Scenario”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Scenario”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">”Year”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">”Year”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Period”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Period”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Owner”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Owner”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Owned”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Owned”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Circular Ownership”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Circular Ownership”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Status”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Status”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“ShowCombination”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“ShowCombination”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Column Display Type”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Column Display Type”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“No of decimals”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“No of decimals”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“%EPU comparator”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“%EPU comparator”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“%EPU”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“%EPU”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Min Level”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Min Level”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Max Level”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Max Level”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“OutputFilePath”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“OutputFilePath”</td></tr></tbody></table>

**Example**

```dart
FilterEPUGrid("“Scenario”","”Year”","“Period”","“Owner”","“Owned”","“Circular Ownership”","“Status”","“ShowCombination”","“Column Display Type”","“No of decimals”","“%EPU comparator”","“%EPU”","“Min Level”","“Max Level”","“OutputFilePath”");
```

</details><details id="bkmrk-CalcEPU-"><summary>CalcEPU</summary>

<p class="callout info">Calculate an EPU Grid</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Run/Force for type of EPU;</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Run/Force for type of EPU;</td></tr></tbody></table>

**Example**

```dart
CalcEPU("Run/Force for type of EPU;"," ");
```

</details><details id="bkmrk-GenerateEPUReport-"><summary>GenerateEPUReport</summary>

<p class="callout info">Generate an EPU Report</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“POV”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“POV”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">”HFM\_FORMAT”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">”HFM\_FORMAT”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“OutputFilePath”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“OutputFilePath”</td></tr></tbody></table>

**Example**

```dart
GenerateEPUReport("“POV”","”HFM_FORMAT”","“OutputFilePath”");
```

</details><details id="bkmrk-GenerateFilteredEPUReport-"><summary>GenerateFilteredEPUReport</summary>

<p class="callout info">Generate a Filtered EPU Report</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“POV”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“POV”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">”HFM\_FORMAT”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">”HFM\_FORMAT”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Owner”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Owner”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Owned”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Owned”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Circular Ownership”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Circular Ownership”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“Status”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Status”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“ShowCombination”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“ShowCombination”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">“OutputFilePath”</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“OutputFilePath”</td></tr></tbody></table>

**Example**

```dart
GenerateFilteredEPUReport("“POV”","”HFM_FORMAT”","“Owner”","“Owned”","“Circular Ownership”","“Status”","“ShowCombination”","“OutputFilePath”");
```

</details>

# JHAT Commands: Extracts

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

<p class="callout info">Extracting Metadata from HFM</p>

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

# JHAT Commands: InterCompany

#### Overview

These JHAT commands will perform intercompany tasks

#### Commands

<details id="bkmrk-InitICTransactionList-"><summary>InitICTransactionList</summary>

<p class="callout info">Initialize Intercompany Transactions List</p>

**Input**

None

**Example**

```dart
InitICTransactionList("");
```

</details><details id="bkmrk-AddICTransactionToList-"><summary>AddICTransactionToList</summary>

<p class="callout info">Add Intercompany Transaction to List</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--76" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Point of View</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Sub ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Sub ID</td></tr></tbody></table>

**Example**

```dart
AddICTransactionToList("S#ActMon.Y#2004.P#January.E#C.I#A.A#PayltIC.C1#Increases.C2#[None].C3#[None].C4#[None]","X785","S01");
```

</details><details id="bkmrk-OpenICPeriod-"><summary>OpenICPeriod</summary>

<p class="callout info">Open Intercompany Period</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">MVPB</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">MVPB

- `No`
- `Yes`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Account Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Account Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Manual Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Manual Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Tid Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Tid Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Tid Percent</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Tid Percent</td></tr></tbody></table>

**Example**

```dart
OpenICPeriod("Actual","2000"," Quarter2"," “yes”","","","","");
```

</details><details id="bkmrk-UpdateICPeriod-"><summary>UpdateICPeriod</summary>

<p class="callout info">Update Intercompany Period</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">MVPB</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">MVPB

- `No`
- `Yes`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Account Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Account Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Manual Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Manual Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Tid Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Tid Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Tid Percent</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Tid Percent</td></tr></tbody></table>

**Example**

```dart
UpdateICPeriod("Actual","2000"," Quarter2"," “yes”","","","","");
```

</details><details id="bkmrk-ProcessAllICTransactions-"><summary>ProcessAllICTransactions</summary>

<p class="callout info">Process All Intercompany Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--47" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Process Action</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Action to perform on IC Transactions

- `Post`
- `UnPost`
- `Delete`
- `UnMatch`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr></tbody></table>

**Example**

```dart
ProcessAllICTransactions("Delete","ActMon","2004","January");
```

</details><details id="bkmrk-ProcessICTransaction-"><summary>ProcessICTransaction</summary>

<p class="callout info">Process Intercompany Transaction</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--48" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Process Action</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Action to perform on IC Transactions

- `Post`
- `UnPost`
- `Delete`
- `UnMatch`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr></tbody></table>

**Example**

```dart
ProcessICTransaction("Delete","Scenario","Year","Period");
```

</details><details id="bkmrk-ProcessICTransactions-"><summary>ProcessICTransactions</summary>

<p class="callout info">Process Intercompany Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--49" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Process Action</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Action to perform on IC Transactions

- `Post`
- `UnPost`
- `Delete`
- `UnMatch`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Point of View</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Sub ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Sub ID</td></tr></tbody></table>

**Example**

```dart
ProcessICTransactions("Delete","S#ActMon.Y#2004.P#January.E#C.I#A.A#PayltIC.C1#Increases.C2#[None].C3#[None].C4#[None]","X785","S01"," ");
```

</details><details id="bkmrk-CreateICTransaction-"><summary>CreateICTransaction</summary>

<p class="callout info">Create IC Transaction</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--50" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Point of View</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Sub ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Sub ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Reference ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Reference ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Date</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Date</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Currency</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Amount</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Amount</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity Currency Amount  
</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity Currency Amount  
</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment 1</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment 1</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment 2</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment 2</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Reason code</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Reason code</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Conversion Rate</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Conversion Rate</td></tr></tbody></table>

**Example**

```dart
CreateICTransaction("S#ActMon.Y#2004.P#January.E#C.I#A.A#PayltIC.C1#Increases.C2#[None].C3#[None].C4#[None]","Trans id","Sub id"," Ref id","trans date"," trans currency"," trans amount"," entity currency amount"," commnet1 "," comment2","Reason code","Conversion Rate");
```

</details><details id="bkmrk-ICAutoMatchByID-"><summary>ICAutoMatchByID</summary>

<p class="callout info">Intercompany Auto Match by ID</p>

<p class="callout warning">Must Call `AddICTransactionToList` prior to calling this</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--51" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity List

- `All`
- Valid Entity List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP List

- `All`
- Valid ICP List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">no</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Trans</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">no</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">no</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">no</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">S12</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">S12</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Is Transaction Id</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Is Transaction Id</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction IDs</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction IDs</td></tr></tbody></table>

**Example**

```dart
ICAutoMatchByID("ActMon","2004","January","1","2","no","no","no","Transaction","S12","S13","S15");
```

</details><details id="bkmrk-CloseICPeriod-"><summary>CloseICPeriod</summary>

<p class="callout info">Close Intercompany Period</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--52" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr></tbody></table>

**Example**

```dart
CloseICPeriod("Actual","2000"," Quarter2");
```

</details><details id="bkmrk-ICAutoMatchByAccount-"><summary>ICAutoMatchByAccount</summary>

<p class="callout info">Intercompany Auto match by Account</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--53" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Currency</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">no</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">no</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">no</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">no</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity Accounts</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Parent Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Parent Accounts</td></tr></tbody></table>

**Example**

```dart
ICAutoMatchByAccount("ActMon","2004","January","1","2","no","no","no","","");
```

</details><details id="bkmrk-CreateReasonCode-"><summary>CreateReasonCode</summary>

<p class="callout info">Create Reason Code</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--54" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr></tbody></table>

**Example**

```dart
CreateReasonCode("Label","Description");
```

</details><details id="bkmrk-DeleteReasonCode-"><summary>DeleteReasonCode</summary>

<p class="callout info">Delete Reason Code</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--55" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr></tbody></table>

**Example**

```dart
DeleteReasonCode("Label");
```

</details><details id="bkmrk-DeleteAllReasonCodes-"><summary>DeleteAllReasonCodes</summary>

<p class="callout info">Delete All Reason Codes</p>

**Input**

None

**Example**

```dart
DeleteAllReasonCodes("");
```

</details><details id="bkmrk-ListReasonCodes-"><summary>ListReasonCodes</summary>

<p class="callout info">List Reason Codes</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--56" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output file path</td></tr></tbody></table>

**Example**

```dart
ListReasonCodes("File Path");
```

</details><details id="bkmrk-ListICPeriods-"><summary>ListICPeriods</summary>

<p class="callout info">List Intercompany Periods</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--57" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr></tbody></table>

**Example**

```dart
ListICPeriods("Scenario","Year","Output File");
```

</details><details id="bkmrk-GetICTransactions-"><summary>GetICTransactions</summary>

<p class="callout info">Get Inter Company Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--58" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr></tbody></table>

**Example**

```dart
GetICTransactions("Scenario","Year","Period","Output File");
```

</details><details id="bkmrk-FilterICTransactions-"><summary>FilterICTransactions</summary>

<p class="callout info">Filter Intercompany Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--59" style="height: 867.641px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity Account List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity Account List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Partner Account</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Partner Account</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Sub ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Sub ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Reference ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Reference ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Amount From</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Amount From</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Amount To</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Amount To</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Reason Code</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Reason Code</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Match Code</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Match Code</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Currency</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Start Date</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Start Date</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">End Date</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">End Date</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Display Entity Transaction</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Display Entity Transaction</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Display Partner Transaction</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Display Partner Transaction</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include Matched?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include Matched?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include Unmatched?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include Unmatched?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include Mismatched?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include Mismatched?

- `true`
- `false`

</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Include Posted?</td><td class="align-center" style="width: 18.1326%; height: 29.7969px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Include Posted?

- `true`
- `false`

</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Include Unposted?</td><td class="align-center" style="width: 18.1326%; height: 29.7969px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Include Unposted?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%;">Output File</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Output File</td></tr></tbody></table>

**Example**

```dart
FilterICTransactions("ActMon","2012","January","Entity","ICP","Entity Account List","Partner Account","Trans ID","Trans SUB ID","Reference ID","Amount From","Amount to","Reason Code","Match Code","Trans Currency","Start date", "End Date", "Display entity trans", "Display partner trans", "include matched", "inlucded unmatched", "include mismatched", "include posted", "include unposted", "C:SourceJhatreportsgetICTTransactions.txt");
```

</details><details id="bkmrk-DisplayICTransactions-"><summary>DisplayICTransactions</summary>

<p class="callout info">Display Intercompany Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--60" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scale Factor</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scale Factor</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Decimal Override</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Decimal Override</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Common Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Common Currency</td></tr><tr><td style="width: 31.6644%;">Display Option</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Display Option

- `Label`
- `Description`
- `Both`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%;">Output File</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Output File</td></tr></tbody></table>

**Example**

```dart
DisplayICTransactions("Scenario","Year","Period","Scale Factor","Decimal Override","Common Currency","Display Option","Output File");
```

</details><details id="bkmrk-LockICEntity-"><summary>LockICEntity</summary>

<p class="callout info">Lock Intercompany Entity</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--61" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity String</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity String delimited by `,`</td></tr></tbody></table>

**Example**

```dart
LockICEntity("Actual","2000"," Quarter2","EastSales,China");
```

</details><details id="bkmrk-UnLockICEntity-"><summary>UnLockICEntity</summary>

<p class="callout info">Unlock Intercompany Entity</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--62" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity String</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity String delimited by `,`</td></tr></tbody></table>

**Example**

```dart
UnLockICEntity("Actual","2000"," Quarter2"," EastSales,China");
```

</details><details id="bkmrk-EditICTransaction-"><summary>EditICTransaction</summary>

<p class="callout info">Edit Intercompany Transaction</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--63" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">TID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction SUB ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">T Sub ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">List number which has field name to update</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">List number which has field name to update</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">List number of which has corresponding values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">List number of which has corresponding values</td></tr></tbody></table>

**Example**

```dart
EditICTransaction("POV","TID"," T Sub ID"," List number wihcih has filed name to update"," List number of which has corresponding values");
```

</details><details id="bkmrk-CreateAutoMatchByIDTemplate-"><summary>CreateAutoMatchByIDTemplate</summary>

<p class="callout info">Create Auto Match By ID Template</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--64" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security Class</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Security Class</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">isPrivate</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">isPrivate</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Overwrite</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Overwrite</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Location</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Location</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Currency</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ID Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ID Type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">IDs</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">IDs</td></tr></tbody></table>

**Example**

```dart
CreateAutoMatchByIDTemplate("name"," Description"," Security Class"," isPrivate"," Overwrite"," Location","POV","  Entity"," ICP"," Currency"," ID Type"," IDs");
```

</details><details id="bkmrk-CreateAutoMatchByAccountTemplate-"><summary>CreateAutoMatchByAccountTemplate</summary>

<p class="callout info">Create Auto Match by Account Template</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--65" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security Class</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Security Class</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">isPrivate</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">isPrivate</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Overwrite</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Overwrite</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Location</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Location</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Currency</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Accounts</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Matching Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Matching Accounts</td></tr></tbody></table>

**Example**

```dart
CreateAutoMatchByAccountTemplate("name"," Description"," Security Class"," isPrivate"," Overwrite"," Location","POV","  Entity"," ICP"," Currency"," Accounts"," Matching Accounts");
```

</details><details id="bkmrk-ListMonitorIntercompany-"><summary>ListMonitorIntercompany</summary>

<p class="callout info">List Monitor Intercompany</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--66" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr></tbody></table>

**Example**

```dart
ListMonitorIntercompany("Actual","2010"," Quarter1","C:SourceJhatreportsgetMonitorIntercompanyTranscations.txt");
```

</details><details id="bkmrk-ListMonitorIntercompanySummary-"><summary>ListMonitorIntercompanySummary</summary>

<p class="callout info">List Monitor Intercompany Cummary</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--67" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr></tbody></table>

**Example**

```dart
ListMonitorIntercompanySummary("Actual","2010"," Quarter1","C:SourceJhatreportsgetMonitorIntercompanyTranscations.txt");
```

</details><details id="bkmrk-FilterMonitorIntercompany-"><summary>FilterMonitorIntercompany</summary>

<p class="callout info">Filter Monitor Intercompany</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entities</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">String of Entities delimited by `;`</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Active</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Active

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Process Status</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Process Status

- `Started`
- `Not Started`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Lock Status</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Lock Status

- `Lockable`
- `Not Lockable`
- `Locked`

</td></tr></tbody></table>

**Example**

```dart
FilterMonitorIntercompany("Actual","2010"," Quarter1","","A;B;C;","C:SourceJhatreportsgetMonitorIntercompanyTranscations.txt"," ActiveTrue/false"," ProcessStatus"," LockStatus","");
```

</details>

# JHAT Commands: Journals

#### Overview

These JHAT commands are related to Journal Entries

#### Commands

<details id="bkmrk-SubmitJournal-"><summary>SubmitJournal</summary>

<p class="callout info">Submit Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--15" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Label</td></tr></tbody></table>

**Example**

```dart
SubmitJournal("Scenario"," Year"," Period"," Journal Label");
```

</details><details id="bkmrk-ApproveJournal-"><summary>ApproveJournal</summary>

<p class="callout info">Approve Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--16" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Label</td></tr></tbody></table>

**Example**

```dart
ApproveJournal("Scenario"," Year"," Period"," Journal Label");
```

</details><details id="bkmrk-GetAdjustments-"><summary>GetAdjustments</summary>

<p class="callout info">Get Adjustments</p>

**Input**

None

**Example**

```dart
GetAdjustments("");
```

</details><details id="bkmrk-OpenPeriod-"><summary>OpenPeriod</summary>

<p class="callout info">Open Period</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--17" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr></tbody></table>

**Example**

```dart
OpenPeriod("Scenario"," Year"," Period");
```

</details><details id="bkmrk-ClosePeriod-"><summary>ClosePeriod</summary>

<p class="callout info">Close Period</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--18" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr></tbody></table>

**Example**

```dart
ClosePeriod("Scenario"," Year"," Period");
```

</details><details id="bkmrk-PostJournal-"><summary>PostJournal</summary>

<p class="callout info">Post Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--19" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Label</td></tr></tbody></table>

**Example**

```dart
PostJournal("Scenario"," Year"," Period"," Journal Label");
```

</details><details id="bkmrk-UnPostJournal-"><summary>UnPostJournal</summary>

<p class="callout info">UnPost Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--20" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Label</td></tr></tbody></table>

**Example**

```dart
UnPostJournal("Scenario"," Year"," Period"," Journal Label");
```

</details><details id="bkmrk-UnSubmitJournal-"><summary>UnSubmitJournal</summary>

<p class="callout info">UnSubmit Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--21" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Label</td></tr></tbody></table>

**Example**

```dart
UnSubmitJournal("Scenario"," Year"," Period"," Journal Label");
```

</details><details id="bkmrk-RejectJournal-"><summary>RejectJournal</summary>

<p class="callout info">Reject Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--22" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Label</td></tr></tbody></table>

**Example**

```dart
RejectJournal("Scenario"," Year"," Period"," Journal Label");
```

</details><details id="bkmrk-DeleteJournal-"><summary>DeleteJournal</summary>

<p class="callout info">Delete Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--23" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Label</td></tr></tbody></table>

**Example**

```dart
DeleteJournal("Scenario"," Year"," Period"," Journal Label");
```

</details><details id="bkmrk-GetJournal-"><summary>GetJournal</summary>

<p class="callout info">Get Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--24" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Label</td></tr></tbody></table>

**Example**

```dart
GetJournal("Scenario"," Year"," Period"," Journal Label");
```

</details><details id="bkmrk-ScanJournal-"><summary>ScanJournal</summary>

<p class="callout info">Scan Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--25" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Label</td></tr></tbody></table>

**Example**

```dart
ScanJournal("Scenario"," Year"," Period"," Journal Label");
```

</details><details id="bkmrk-ValidateJournalTemplatePOV-"><summary>ValidateJournalTemplatePOV</summary>

<p class="callout info">Validate Journal Template POV</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--26" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV String</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV String</td></tr></tbody></table>

**Example**

```dart
ValidateJournalTemplatePOV("POV String");
```

</details><details id="bkmrk-GetTemplate-"><summary>GetTemplate</summary>

<p class="callout info">Get Template</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--27" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Template Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Template Label</td></tr></tbody></table>

**Example**

```dart
GetTemplate("Template Label");
```

</details><details id="bkmrk-DeleteTemplate-"><summary>DeleteTemplate</summary>

<p class="callout info">Delete Template</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--28" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Template Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Template Label</td></tr></tbody></table>

**Example**

```dart
DeleteTemplate("Template Label");
```

</details><details id="bkmrk-GenerateRecurringJournal-"><summary>GenerateRecurringJournal</summary>

<p class="callout info">Generate Recurring Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--29" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">BalanceType</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">BalanceType</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Group</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Group</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">SecurityClass</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">SecurityClass</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Single or Multi</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Single or Multi</td></tr></tbody></table>

**Example**

```dart
GenerateRecurringJournal("POV","Type"," BalanceType"," Label"," Description"," Group"," SecurityClass"," Single or Multi");
```

</details><details id="bkmrk-CreateJournal-"><summary>CreateJournal</summary>

<p class="callout info">Create Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--30" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type

- `AutoReversing`
- `AutoReversal`
- `Unit`
- `Regular`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Balance Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Balance Type

- `Balanced`
- `UnBalanced`
- `BalancedByEntity`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Group</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Group</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security Class</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Security Class</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Single or Multi</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Single or Multi</td></tr></tbody></table>

**Example**

```dart
CreateJournal("POV","Type"," BalanceType"," Label"," Description"," Group"," SecurityClass"," Single or Multi");
```

</details><details id="bkmrk-CreateTemplate-"><summary>CreateTemplate</summary>

<p class="callout info">Create Journal Template Template</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--31" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Balance Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Balance Type

- `Balanced`
- `UnBalanced`
- `BalancedByEntity`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Group</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Group</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Standard or Recurring</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Standard or Recurring</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Single Or Multi</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Single Or Multi</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">SecurityClass</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">SecurityClass</td></tr></tbody></table>

**Example**

```dart
CreateTemplate("POV","Balance Type"," Label"," Description"," Group"," Standard or Recurring"," Single Or Multi"," SecurityClass");
```

</details><details id="bkmrk-FilterJournals-"><summary>FilterJournals</summary>

<p class="callout info">Filter Journals</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--32" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output file</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">output file</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Sort type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Sort type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Value</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Value</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Columns</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Columns</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity Filter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity Filter</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Group Filter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Group Filter</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label Filter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label Filter</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Types</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Types delimited by `;`</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Balance Types</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Balance Types delimited by `;`</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Status types</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Status types delimited by `;`</td></tr></tbody></table>

**Example**

```dart
FilterJournals("output file"," Sort type"," Scenario"," Year"," Period"," Value"," Columns"," Entity Filter","Group Filter","Label Filter","Journal Types"," Balance Types"," Status types");
```

</details><details id="bkmrk-AddLineItemToJournal-"><summary>AddLineItemToJournal</summary>

<p class="callout info">Add Line Item To Journal</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--33" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Journal Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Journal Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type

- `Debit`
- `Credit`
- `Unit`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Amount</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Amount</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr></tbody></table>

**Example**

```dart
AddLineItemToJournal("POV","Journal Label","Type"," Amount"," Description");
```

</details><details id="bkmrk-GenerateRecurring-"><summary>GenerateRecurring</summary>

<p class="callout info">Generate Recurring</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--34" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">template Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">template Label</td></tr></tbody></table>

**Example**

```dart
GenerateRecurring("POV","template Label");
```

</details><details id="bkmrk-AddLineToTemplate-"><summary>AddLineToTemplate</summary>

<p class="callout info">Add Line To Template</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--35" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Template Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Template Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type

- `Debit`
- `Credit`
- `Unit`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Amount</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Amount</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr></tbody></table>

**Example**

```dart
AddLineToTemplate("POV","Teplate Label","Type"," Amount"," Description");
```

</details><details id="bkmrk-CreateJournalFromTemplate-"><summary>CreateJournalFromTemplate</summary>

<p class="callout info">Create Journal From Template</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--36" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">NewLabel</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">NewLabel</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Balance Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Balance Type

- `Balanced`
- `UnBalanced`
- `BalancedByEntity`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Group</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Group</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">SecurityClass</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">SecurityClass</td></tr></tbody></table>

**Example**

```dart
CreateJournalFromTemplate("POV","Label"," NewLabel"," Type"," Balance Type"," Description"," Group"," SecurityClass");
```

</details><details id="bkmrk-AddRegKey-"><summary>AddRegKey</summary>

<p class="callout info">Add Reg Key</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--37" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">key</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">key</td></tr></tbody></table>

**Example**

```dart
AddRegKey("key");
```

</details><details id="bkmrk-DeleteRegKey-"><summary>DeleteRegKey</summary>

<p class="callout info">Delete Reg Key</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--38" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">key</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">key</td></tr></tbody></table>

**Example**

```dart
DeleteRegKey("key");
```

</details><details id="bkmrk-CreateJournalGroup-"><summary>CreateJournalGroup</summary>

<p class="callout info">Create Journa lGroup</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--39" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr></tbody></table>

**Example**

```dart
CreateJournalGroup("Name","Description");
```

</details><details id="bkmrk-GetJournalGroups-"><summary>GetJournalGroups</summary>

<p class="callout info">Get Journal Groups</p>

**Input**

None

**Example**

```dart
GetJournalGroups("");
```

</details><details id="bkmrk-ListJournalPeriods-"><summary>ListJournalPeriods</summary>

<p class="callout info">List Journal Periods</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--40" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr></tbody></table>

**Example**

```dart
ListJournalPeriods("Scenario","Year");
```

</details><details id="bkmrk-DeleteJournalGroup-"><summary>DeleteJournalGroup</summary>

<p class="callout info">Delete Journal Group</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--41" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr></tbody></table>

**Example**

```dart
DeleteJournalGroup("Label");
```

</details><details id="bkmrk-DeleteAllJournalGroups-"><summary>DeleteAllJournalGroups</summary>

<p class="callout info">Delete All Journal Groups</p>

**Input**

None

**Example**

```dart
DeleteAllJournalGroups("");
```

</details><details id="bkmrk-FilterTemplates-"><summary>FilterTemplates</summary>

<p class="callout info">Filter Templates</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--42" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Sort</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Sort

- `A` (Ascending)
- `D` (Descending)

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Columns</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Columns</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity Filter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity Filter</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Group Filter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Group Filter</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label Filter</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label Filter</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Template Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Template Type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Balance types</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Balance types</td></tr></tbody></table>

**Example**

```dart
FilterTemplates("output file"," SORTA|D"," Columns"," Entity Filter","Group Filter","Label Filter","Description   "," Template Type"," Balance types");
```

</details>

# JHAT Commands: Load

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

# JHAT Command: Macros

#### Overview

These JHAT Commands are related to Macros

#### Commands

<details id="bkmrk-SubstituteMacro-"><summary>SubstituteMacro</summary>

<p class="callout info">Substitute Macro</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Macro Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Macro Name</td></tr></tbody></table>

**Example**

```dart
SubstituteMacro("__MacroName__");
```

</details><details id="bkmrk-DefineMacro-"><summary>DefineMacro</summary>

<p class="callout info">Define Macro</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Macro Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Macro Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Macro Replacement Text</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Macro Replacement Text</td></tr></tbody></table>

**Example**

```dart
DefineMacro("__MacroName__"," MacroRecplacmentText");
```

</details><details id="bkmrk-DefineMacroEx-"><summary>DefineMacroEx</summary>

<p class="callout info">Define Macro Ex</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">\_\_ExMacroName\_\_</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">\_\_ExMacroName\_\_</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">\_\_MacroName\_\_/MacroRecplacmentText</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">\_\_MacroName\_\_/MacroRecplacmentText</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">\_\_MacroName\_\_/MacroRecplacmentText ...</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">\_\_MacroName\_\_/MacroRecplacmentText ...</td></tr></tbody></table>

**Example**

```dart
DefineMacroEx("__ExMacroName__","__MacroName__/MacroRecplacmentText"," __MacroName__/MacroRecplacmentText ...");
```

</details><details id="bkmrk-RemoveMacro-"><summary>RemoveMacro</summary>

<p class="callout info">Remove Macro</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Macro Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Macro Name</td></tr></tbody></table>

**Example**

```dart
RemoveMacro("__MacroName__");
```

</details><details id="bkmrk-ShowMacros-"><summary>ShowMacros</summary>

<p class="callout info">ShowMacros</p>

**Input**

None

**Example**

```dart
ShowMacros("");
```

</details><details id="bkmrk-Comment-"><summary>Comment</summary>

<p class="callout info">Comment</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment Text</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment Text</td></tr></tbody></table>

**Example**

```dart
Comment("comment text");
```

</details><details id="bkmrk-LoadMacros-"><summary>LoadMacros</summary>

<p class="callout info">Load Macros</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Macro File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Macro File Name</td></tr></tbody></table>

**Example**

```dart
LoadMacros("macro file name");
```

</details>

# JHAT Commands: Configuration

#### Overview

These JHAT Commands are related to configuration actions

#### Commands

<details id="bkmrk-DisableEnableModule-"><summary>DisableEnableModule</summary>

<p class="callout info">DisableEnableModule</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Module Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Module Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Enable/Disable</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Enable/Disable</td></tr></tbody></table>

**Example**

```dart
DisableEnableModule("Module Name"," Enable/Disable");
```

</details>

# JHAT Commands: Miscellaneous Actions

#### Overview

These JHAT Commands are related to miscellaneous actions

#### Commands

<details id="bkmrk-CalculateOwnership-"><summary>CalculateOwnership</summary>

<p class="callout info">Calculate Ownership</p>

<p class="callout warning">Must add periods to list</p>

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

# JHAT Commands: Process Management

#### Overview

These JHAT Commands are related to Process Management actions

#### Commands

<details id="bkmrk-ProcessFlowGetHistory-"><summary>ProcessFlowGetHistory</summary>

<p class="callout info">Process Flow Get History</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Time?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Time?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User?

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowGetHistory("C:hfmhistoryfile.log"," true|false"," true|false");
```

</details><details id="bkmrk-ProcessFlowChangeIncludeDescendants-"><summary>ProcessFlowChangeIncludeDescendants</summary>

<p class="callout info">Process Flow Change Include Descendants</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Action</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Action

- `START`
- `PROMOTE`
- `SIGNOFF`
- `SUBMIT`
- `APPROVE`
- `PUBLISH`
- `REJECT`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Not Applicable</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Not Applicable</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Phases</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phases (can be comma Delimited)</td></tr></tbody></table>

**Example**

```dart
ProcessFlowChangeIncludeDescendants("Start","NA"," 1");
```

</details><details id="bkmrk-ProcessFlowStart-"><summary>ProcessFlowStart</summary>

<p class="callout info">Process Flow Start</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowStart("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowPromote-"><summary>ProcessFlowPromote</summary>

<p class="callout info">Process Flow Promote</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Review Level to Promote to RL#</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Review Level to Promote to RL#

- `RL1`
- `RL2`
- `RL3`
- etc

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowPromote("Comment"," Use all members values true or false"," Filename to put history in"," Review Level to Promote to RL#"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowSubmit-"><summary>ProcessFlowSubmit</summary>

<p class="callout info">Process Flow Submit</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowSubmit("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowApprove-"><summary>ProcessFlowApprove</summary>

<p class="callout info">Process Flow Approve</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 217.891px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 46.5938px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowApprove("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowPublish-"><summary>ProcessFlowPublish</summary>

<p class="callout info">Process Flow Publish</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowPublish("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowSignOff-"><summary>ProcessFlowSignOff</summary>

<p class="callout info">Process Flow Sign Off</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--6" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowSignOff("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowReject-"><summary>ProcessFlowReject</summary>

<p class="callout info">Process Flow Reject</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--7" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowReject("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-GetPhaseSubmissionGrid-"><summary>GetPhaseSubmissionGrid</summary>

<p class="callout info">GetPhaseSubmissionGrid</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--8" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Phase</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phase

- `All`
- `1`
- `2`
- `3`
- etc

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr></tbody></table>

**Example**

```dart
GetPhaseSubmissionGrid("Scenario"," All | Phase number"," Output File Path");
```

</details><details id="bkmrk-ViewUnassignedGroups-"><summary>ViewUnassignedGroups</summary>

<p class="callout info">View Unassigned Groups</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--9" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr></tbody></table>

**Example**

```dart
ViewUnassignedGroups("Scenario"," Period"," Output File Path");
```

</details><details id="bkmrk-SetSubmissionGroup-"><summary>SetSubmissionGroup</summary>

<p class="callout info">Set Submission Group</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--10" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Phase</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phase</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Group Value</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Group Value</td></tr></tbody></table>

**Example**

```dart
SetSubmissionGroup("Scenario"," Period"," Phase"," Group Value");
```

</details>

# JHAT Commands: Journal Reports

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

# JHAT Commands: Runtime Actions

#### Overview

These JHAT Commands are related to Runtime actions

#### Commands

<details id="bkmrk-Delay-"><summary>Delay</summary>

<p class="callout info">Delay</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">interval</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">interval</td></tr></tbody></table>

**Example**

```dart
Delay("interval");
```

</details><details id="bkmrk-ReplaceLineInTextFile-"><summary>ReplaceLineInTextFile</summary>

<p class="callout info">Replace Line In Text File</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“\_\_@SCRIPTDIR\_\_Rules.rle”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Text to Find</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Const BuildandTieFolder =”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Replacement Text</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Const BuildandTieFolder = \_\_@DQUOTECHAR\_\_\_\_@BASEDIR\_\_\_\_@DQUOTECHAR\_\_</td></tr></tbody></table>

**Example**

```dart
ReplaceLineInTextFile("“__@SCRIPTDIR__Rules.rle”"," “Const BuildandTieFolder =”"," “Const BuildandTieFolder = __@DQUOTECHAR____@BASEDIR____@DQUOTECHAR__ ");
```

</details><details id="bkmrk-BeginLoop-"><summary>BeginLoop</summary>

<p class="callout info">Begin Loop</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Repeat count</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Repeat count</td></tr></tbody></table>

**Example**

```dart
BeginLoop("Repeat count");
```

</details><details id="bkmrk-EndLoop-"><summary>EndLoop</summary>

<p class="callout info">End Loop</p>

**Input**

None

**Example**

```dart
EndLoop();
```

</details><details id="bkmrk-StartTimer-"><summary>StartTimer</summary>

<p class="callout info">StartTimer</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Timer ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Timer ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Timer Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Timer Name</td></tr></tbody></table>

**Example**

```dart
StartTimer("3","Time to Load Metadata");
```

</details><details id="bkmrk-StopTimer-"><summary>StopTimer</summary>

<p class="callout info">Stop Timer</p>

<p class="callout warning">Must Run `StartTimer` first</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Timer ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">1</td></tr></tbody></table>

**Example**

```dart
StopTimer("1");
```

</details><details id="bkmrk-AbortOnError-"><summary>AbortOnError</summary>

<p class="callout info">Abort On Error</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Abort on Error</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Abort on Error

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
AbortOnError("true");
```

</details><details id="bkmrk-SetNegativeTestingFlag-"><summary>SetNegativeTestingFlag</summary>

<p class="callout info">SetNegativeTestingFlag</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Set Negative Testing Flag</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Set Negative Testing Flag

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
SetNegativeTestingFlag("true");
```

</details><details id="bkmrk-CallOtherProcess-"><summary>CallOtherProcess</summary>

<p class="callout info">Call Other Process</p>

<p class="callout info">Can have up to 100 arguments</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--6" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Executable</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Executable</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Argument 1</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Argument 1</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Argument 2</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Argument 2</td></tr></tbody></table>

**Example**

```dart
CallOtherProcess("Wscript.exe","C:hfmconsolidate.wsf","");
```

</details><details id="bkmrk-CompareFiles-"><summary>CompareFiles</summary>

<p class="callout info">Compare Files</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--7" style="height: 206.672px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File 1</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File 1</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File 2</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File 2</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Mode</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Mode</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Diff File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Diff File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Exclusion Rules</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Exclusion Rules</td></tr></tbody></table>

**Example**

```dart
CompareFiles("file1"," file2"," mode"," diffFile"," exclusion_rules");
```

</details><details id="bkmrk-CompareFilesContentNotOrdered-"><summary>CompareFilesContentNotOrdered</summary>

<p class="callout info">Compare Files Content Not Ordered</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--8" style="height: 110.547px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File 1</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File 1</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File 2</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File 2</td></tr><tr style="height: 10px;"><td style="width: 31.6644%; height: 10px;">Diff File</td><td class="align-center" style="width: 18.1326%; height: 10px;">✓</td><td style="width: 50.203%; height: 10px;">Diff File</td></tr></tbody></table>

**Example**

```dart
CompareFilesContentNotOrdered("file1"," file2"," diffFile");
```

</details><details id="bkmrk-CompareMultipleFiles-"><summary>CompareMultipleFiles</summary>

<p class="callout info">Compare Multiple Files</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--9" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Spec</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Spec</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Directory</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Directory</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Mode</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Mode

- `TEXT`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Exclusion Rules</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Exclusion Rules</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Difference Directory</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Difference Directory</td></tr></tbody></table>

**Example**

```dart
CompareMultipleFiles("filenamespec"," directory"," mode"," rules","  diffDirectory;"," ");
```

</details>