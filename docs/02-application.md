# JHAT Commands: Application

[← Back to index](../README.md)

## Overview

Commands for logging on, opening and closing applications, setting the point of view (POV), and creating, copying, changing and deleting applications. A script normally starts with `Logon` and `OpenApplication` and ends with `CloseApplication` and `Logout`.

- **Need `Logon` only:** `OpenApplication`, `CreateApplicationCAS` / `CreateApplicationExtDim`, `DeleteApplication`, `DeleteAllApplications`, `CopyApplication`, `ModifyApplication`, `SetPreferences` and `GetPreferences`. These work on an application by name, without opening it.
- **Need an open application:** `SetPOV`, `SetPOVName`, `SetPOVExtDim`, `CloseApplication` and `shutdownApplication`.

## Commands

**Commands on this page:**

[SetPOV / SetPOVName](#setpov--setpovname), [SetPOVExtDim](#setpovextdim), [Logon](#logon), [Logout](#logout), [DeleteApplication](#deleteapplication), [CreateApplicationExtDim / CreateApplicationCAS](#createapplicationextdim--createapplicationcas), [OpenApplication](#openapplication), [CloseApplication](#closeapplication), [shutdownApplication](#shutdownapplication), [DeleteAllApplications](#deleteallapplications), [CopyApplication](#copyapplication), [SetPreferences](#setpreferences), [GetPreferences](#getpreferences), [ModifyApplication](#modifyapplication)

### SetPOV / SetPOVName

> [!NOTE]
> Sets the point of view (POV) for the commands that follow. A POV is one member from each dimension, identifying a single cell (or, for process management, a process unit). Commands that act on data, such as `SetCell`, `Consolidate`, `Lock`, `CalcEPU` and the process flow commands, use it. It stays in effect until the next `SetPOV`.

> [!WARNING]
> Use this command only for applications with exactly 4 custom dimensions: it fails with fewer, and ignores any beyond the fourth. For any other number, use `SetPOVExtDim`.

> [!NOTE]
> `SetPOV` and `SetPOVName` are identical. All 12 parameters are required. Custom 1–4 map to the application's first four custom dimensions, in order. On success, the selected member for each dimension is written to the log.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | Scenario |
| Year | ✓ | Year |
| Period | ✓ | Period (should be a base member) |
| View | ✓ | View |
| Entity | ✓ | Entity, or `Parent.Entity`. Can use member lists. |
| Value | ✓ | Value |
| Account | ✓ | Account |
| ICP | ✓ | Intercompany Partner |
| Custom 1 | ✓ | Custom 1 |
| Custom 2 | ✓ | Custom 2 |
| Custom 3 | ✓ | Custom 3 |
| Custom 4 | ✓ | Custom 4 |

**Example**

```dart
SetPOV("ACTatACIFRS","2023","DEC","YTD","TGROUP","<Entity Currency>","TOTNI","[ICP Top]","TOTC1","TOTC2","TOTC3","TOTC4");
```

### SetPOVExtDim

> [!NOTE]
> Sets the point of view (POV) for the commands that follow, like `SetPOV`, but takes the POV as a single string. This works for applications with any number of custom dimensions. Include every dimension that the following commands need.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| POV | ✓ | POV string, e.g. `S#ACTatACIFRS.E#TGROUPCONT.Y#2023.P#DEC`. Custom dimensions can be written as `C1#`, `C2#`, … (either case). These are replaced with the application's custom dimension names, and the normalized POV string is written to the log. |
| Member Display Type | ✓ | How members are written to the log: `SHOWIDS` (member IDs) or `SHOWNAMES` (member names) |

**Example**

```dart
SetPOVExtDim("S#ACTatACIFRS.Y#2023.P#DEC.W#YTD.E#TGROUP.V#<Entity Currency>.A#TOTNI.I#[ICP Top].C1#TOTC1.C2#TOTC2.C3#TOTC3.C4#TOTC4","SHOWNAMES");
```

### Logon

> [!NOTE]
> Authenticates the user against Shared Services and keeps the SSO token for the rest of the script. Only the user name and password are used. The first two parameters must be present but are ignored.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Unused | ✓ | Ignored. Must be supplied (e.g. `"true"`). |
| Domain | ✓ | Ignored. Must be supplied (e.g. `""`). |
| Username | ✓ | Login User Name |
| Password | ✓ | Login Password |

**Example**

```dart
Logon("false", "", "user", "password");
```

### Logout

> [!NOTE]
> Discards the SSO token and stored credentials from `Logon`. It does not call the server.

**Input**

None

**Example**

```dart
Logout();
```

### DeleteApplication

> [!NOTE]
> Permanently deletes an application, including all its data, from a cluster or server.

> [!CAUTION]
> Be careful when running this command.

> [!WARNING]
> This command always reports success. If the delete fails (for example, the application doesn't exist), it only logs "Not able to delete application. Application might not exist".

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Server | ✓ | Server or Cluster to run the command |
| Application | ✓ | Application to be deleted. |

**Example**

```dart
DeleteApplication("Server","Application");
```

### CreateApplicationExtDim / CreateApplicationCAS

> [!NOTE]
> Creates an Application on the Server. `CreateApplicationExtDim` and `CreateApplicationCAS` are identical and take 7 or 8 parameters.

> [!CAUTION]
> Be careful when running this command.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Server | ✓ | Server or Cluster to run the command |
| Application | ✓ | Application to be created. |
| Application Description | ✓ | Description of the Application |
| Profile File | ✓ | Local path to the application profile (`.per`) file. The command fails with "Failed reading the profile file" if it can't be opened. Creating a Profile File: [https://docs.oracle.com/cd/E57185\_01/HFMAD/ch02s04.html](https://docs.oracle.com/cd/E57185_01/HFMAD/ch02s04.html) |
| Local Storage | ✓ | Local working folder for the application |
| Project Name | ✓ | Project Name |
| Web URL | ✓ | HFM web URL, e.g. `http://myServer:80/HFM` |
| Application Type | | `TAX` for a Tax Provision application. Any other value, or leaving it out, creates a Standard Consolidation application. |

**Example**

```dart
CreateApplicationExtDim("Server","Application","ApplicationDescription","ProfilePath","StorageFolder","ProjectName","http://myServer:80/HFM");
CreateApplicationCAS("Server","TaxApp","Tax Provision","ProfilePath","StorageFolder","ProjectName","http://myServer:80/HFM","TAX");
```

### OpenApplication

> [!NOTE]
> Opens a session on the specified application (locale `en`) using the SSO token from `Logon`, and loads the application's dimensions for `SetPOV`. Most other commands need an open application.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Cluster | ✓ | Cluster or Server to Open Application On |
| Application | ✓ | Application to Open |

**Example**

```dart
OpenApplication("Cluster","Application");
```

### CloseApplication

> [!NOTE]
> Closes the session opened by `OpenApplication`, removes any data grid the script created, and clears the cached dimensions. If no application is open, the command is ignored. It always reports success.

**Input**

None

**Example**

```dart
CloseApplication();
```

### shutdownApplication

> [!NOTE]
> Shuts down the currently open application (the one from `OpenApplication`) on all the Jhsxserver instances across all the clusters and servers. If no application is open, nothing happens.

> [!CAUTION]
> Be careful when running this command.

> [!WARNING]
> Although JHAT's built-in usage text shows `(<Application name>)`, the command takes no parameters. Passing one fails with "Incorrect number of parameters."

**Input**

None

**Example**

```dart
OpenApplication("Cluster","Application");
shutdownApplication();
```

### DeleteAllApplications

> [!NOTE]
> Deletes every application on the given cluster or server, logging each one as it is deleted. Stops at the first failure.

> [!CAUTION]
> Be careful when running this command.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Server | ✓ | Server to delete applications on |

**Example**

```dart
DeleteAllApplications("Server");
```

### CopyApplication

> [!NOTE]
> Copies one application to a new application. The copy flags are `true` only when the value is `true` (any case). Any other value counts as `false`.

> [!CAUTION]
> Be careful when running this command.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Source Application | ✓ | The application to copy from |
| Target Application | ✓ | The new application |
| Application Description | ✓ | New application description |
| Cluster | ✓ | Cluster to copy application on |
| Project Name | ✓ | Project Name |
| Copy Audit Tables | ✓ | `true` / `false` |
| Copy Data Tables | ✓ | `true` / `false` |

**Example**

```dart
CopyApplication("PRODAPP", "TESTAPP", "Copy of PRODAPP", "Cluster", "Project Name", "false", "true");
```

### SetPreferences

> [!NOTE]
> Sets the logged-on user's preferences for an application. It needs `Logon` but not `OpenApplication`.

> [!CAUTION]
> Be careful when running this command.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Application | ✓ | Application to set preferences on |
| Cluster | ✓ | Cluster to set preferences on |
| Language | ✓ | `English`, `French`, `German`, `Italian` or `Japanese`. Any other value is treated as `English`. |
| Decimal Character | ✓ | Decimal separator |
| Thousands Character | ✓ | Thousands separator |
| Save in Unicode Format | ✓ | `true` / `false` |
| Use Doc Manager as Default | ✓ | `true` to open Document Manager by default |

**Example**

```dart
SetPreferences("Application", "Cluster", "English", ".", ",", "true", "false");
```

### GetPreferences

> [!NOTE]
> Gets the logged-on user's preferences for an application and writes them to an output file, one `PREFERENCE=value` per line. The file is overwritten if it exists.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Application | ✓ | Application to read preferences from |
| Cluster | ✓ | Cluster the application is on |
| Output File Path | ✓ | Path to output file |

**Example**

```dart
GetPreferences("Application Name", "Cluster","Output File Path");
```

### ModifyApplication

> [!NOTE]
> Changes an existing application's number of years and which modules are enabled, like the [Modify Application](https://docs.oracle.com/cd/E57185_01/OHFMA/help_modifyapp.htm#OHFMA-applications_508) page in HFM. The application doesn't need to be open.

> [!CAUTION]
> Be careful when running this command.

> [!NOTE]
> The application is put in admin mode while changes are made and taken out of it afterwards, including when the change fails.

> [!WARNING]
> The module flags only disable modules. Each `false` flag disables that module. A `true` flag leaves the module's current setting alone, and if every flag is `true` no module change is sent at all. So this command can't re-enable a module that is already disabled.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Application | ✓ | Application to modify |
| Cluster | ✓ | Cluster the application is on |
| Number of Years | ✓ | Number of years the application should have from beginning. Pass `""` to leave the number of years unchanged. |
| Enable Process Control | ✓ | `true` / `false` |
| Enable Manage Ownership | ✓ | `true` / `false` |
| Enable Journals | ✓ | `true` / `false` |
| Enable Data Management | ✓ | `true` / `false` |
| Enable Task Audit | ✓ | `true` / `false` |
| Enable Intercompany Transactions | ✓ | `true` / `false` |
| Enable Equity Pickup | ✓ | `true` / `false` |

**Example**

```dart
ModifyApplication("Application", "Cluster", "", "true", "true", "true", "true", "true", "true", "false");
```
