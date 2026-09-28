# JHAT Commands: Application

[← Back to index](../README.md)

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
