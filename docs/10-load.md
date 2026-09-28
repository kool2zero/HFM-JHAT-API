# JHAT Commands: Load

[← Back to index](../README.md)

## Overview

Commands for loading data, metadata, security, rules, member lists, journals, intercompany transactions and documents into HFM from local files.

- **Scan:** most loads can scan instead of load. A scan checks the file and reports errors in the log without changing anything, which is useful before loading into a production application.
- **Data load modes** decide what happens to data already in HFM:
  - *Merge* (the default) overwrites the cells in the file and adds any that don't exist yet. Other data is untouched.
  - *Replace* first clears the existing values for each unique point of view in the file, then loads.
  - *Accumulate* adds the file's values to the existing ones.
  - *Replace by security* works like Replace, but only for points of view the user has full access to. Cells the user can't fully access are ignored, so it can be used without access to every account.
- **Metadata load modes:** *Merge* adds and updates members, while *Replace* and *Clear* rebuild the metadata (see `LoadMetaData`).

The load commands need an open application.

- **Files:** each command copies your local load file to the HFM server, runs the load, and copies HFM's log back to the log path you give.
- **Log copy failures:** if the log can't be copied, JHAT only notes it in its own log. The command doesn't fail.
- **true/false parameters:** count only when exactly `true` (any case).

> [!WARNING]
> Most load commands report **Successful** even when HFM reports that the load failed. JHAT writes "Load … failed" to its log but then marks the command successful anyway. Check the load log, or the "failed" line in JHAT's log, rather than the command's status. The exceptions are `LoadData`, `StartLoadData`, `LoadPhaseInfo` and `LoadICTransactions`, which wait for the task and report failure correctly.

## Commands

**Commands on this page:**

[LoadSecurity](#loadsecurity), [LoadSecurityExpanded](#loadsecurityexpanded), [LoadMetaData](#loadmetadata), [LoadMetaDataExtDim](#loadmetadataextdim), [LoadICTransactions](#loadictransactions), [LoadDocument](#loaddocument), [LoadRules](#loadrules), [LoadMemberLists](#loadmemberlists), [LoadData](#loaddata), [StartLoadData](#startloaddata), [LoadPhaseInfo](#loadphaseinfo), [LoadJournal](#loadjournal), [LoadModuleConfiguration](#loadmoduleconfiguration)

### LoadSecurity

> [!NOTE]
> Loads a security file, including all parts (users, security classes, role access and security class access).

> [!WARNING]
> JHAT's usage text lists 9 parameters, but this command only accepts exactly 5. To choose which parts to load, use `LoadSecurityExpanded`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Load File | ✓ | Local security file |
| Log File | ✓ | Local file for the log |
| Delimiter | ✓ | e.g. `;` |
| Clear Before Load | ✓ | `true` / `false` |
| Validate Users | ✓ | `true` / `false` |

**Example**

```dart
LoadSecurity("C:\Hfm\Security.sec","C:\Hfm\SecurityLoad.log",";","false","true");
```

### LoadSecurityExpanded

> [!NOTE]
> Loads a security file, choosing which parts to load.

**Input**

All 9 parameters are required.

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Load File | Local security file |
| 2 | Log File | Local file for the log |
| 3 | Delimiter | e.g. `;` |
| 4 | Clear Before Load | `true` / `false` |
| 5 | Validate Users | `true` / `false` |
| 6 | Users | `true` / `false` |
| 7 | Security Classes | `true` / `false` |
| 8 | Role Access | `true` / `false` |
| 9 | Security Class Access | `true` / `false` |

**Example**

```dart
LoadSecurityExpanded("C:\Hfm\Security.sec","C:\Hfm\SecurityLoad.log",";","false","true","true","true","false","false");
```

### LoadMetaData

> [!NOTE]
> Loads a metadata file. The format comes from the file extension: `.xml` loads XML, and anything else loads the native (`.app`) format.

**Input**

Takes exactly 3, 17 or 18 parameters.

- **With 3:** loads currencies, scenarios, entities, accounts, all custom dimensions, consolidation methods, application settings and cell text labels in merge mode, without an integrity check.
- **With 17 or 18:** you choose the mode and what to load.

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Load File | Local metadata file |
| 2 | Log File | Local file for the log |
| 3 | Delimiter | e.g. `;` |
| 4 | Mode | `Merge`, `Replace`, `Clear`, or `Scan` (check the file without loading). Anything else fails. |
| 5 | Currencies | `true` / `false` |
| 6 | Scenarios | `true` / `false` |
| 7 | Entities | `true` / `false` |
| 8 | Accounts | `true` / `false` |
| 9–12 | Custom 1 – Custom 4 | `true` / `false` |
| 13 | Consolidation Methods | `true` / `false` |
| 14 | Application Settings | `true` / `false` |
| 15 | System Accounts | `true` / `false`. `true` also loads Accounts. |
| 16 | Values | `true` / `false` |
| 17 | ICPs | `true` / `false` |
| 18 | Integrity Check | Optional. `true` / `false`. |

**Mode overrides:**

- **`Clear`:** clears existing metadata first, and forces currencies, scenarios, entities, accounts, consolidation methods and application settings on.
- **`Replace`:** forces those on, plus Custom 1–4.

**Example**

```dart
LoadMetaData("C:\Hfm\Metadata.xml","C:\Hfm\MetadataLoad.log",";");
LoadMetaData("C:\Hfm\Metadata.app","C:\Hfm\MetadataLoad.log",";","Merge","true","true","true","true","true","true","true","true","true","true","false","false","false","true");
```

### LoadMetaDataExtDim

> [!NOTE]
> Loads a metadata file, with dimensions chosen in a single string. The format comes from the file extension, as for `LoadMetaData`.

**Input**

The first 5 parameters are required. The rest are optional and positional.

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Load File | Local metadata file |
| 2 | Log File | Local file for the log |
| 3 | Delimiter | e.g. `;` |
| 4 | Mode | `Merge`, `Replace`, `Clear` or `Scan`, as for `LoadMetaData` (including its overrides) |
| 5 | Integrity Check | `true` / `false` |
| 6 | Dimensions | `Dim#true` / `Dim#false` entries joined with `.`, e.g. `S#false.I#true`. See below. |
| 7 | Currencies | `true` / `false` (loaded if left out) |
| 8 | Application Settings | `true` / `false` (loaded if left out) |
| 9 | Consolidation Methods | `true` / `false` (loaded if left out) |
| 10 | System Accounts | `true` / `false`. `true` also loads Accounts. |

In the Dimensions string:

- `S`, `E` and `A` can only be turned off.
- `I` and `V` can only be turned on.
- Custom dimensions are named by their short name, written in upper case. `C1`-style aliases aren't recognized here.

> [!WARNING]
> If you name any custom dimension, name all of them. JHAT builds the custom dimension list only from the ones you name, so leaving some out can shift the settings onto the wrong dimensions.

**Example**

```dart
LoadMetaDataExtDim("C:\Hfm\Metadata.app","C:\Hfm\MetadataLoad.log",";","Merge","false","I#true.V#true");
```

### LoadICTransactions

> [!NOTE]
> Loads (or scans) an intercompany transactions file and waits for the task to finish.

**Input**

All 5 parameters are needed. JHAT doesn't check the count.

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Load File | ✓ | Local transactions file |
| Log File | ✓ | Local file for the log |
| Load or Scan | ✓ | `Scan` to only check the file. Anything else loads. |
| Merge or Replace | ✓ | `Merge` or `Replace` (passed to HFM as given) |
| Delimiter | ✓ | e.g. `;` |

**Example**

```dart
LoadICTransactions("C:\HFM\ICTrans.trn","C:\HFM\ICTrans.log","Load","Merge",";");
```

### LoadDocument

> [!NOTE]
> Loads a local file into Document Manager, or creates a Document Manager folder when File Type is `Folder`. The command needs all 9 parameters, though JHAT doesn't check the count.

**Input: loading a document**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Name | Document name in Document Manager |
| 2 | Description | Not used when loading a document |
| 3 | Local File | Local file to load |
| 4 | Security Class | Security class for the document |
| 5 | Overwrite | `true` / `false` |
| 6 | Document Type | e.g. `WebForm` (see [Document and file types](05-documents.md#document-and-file-types)) |
| 7 | File Type | e.g. `Form` |
| 8 | Private | `true` / `false` |
| 9 | Folder | Document Manager folder, or `\` for the root |

**Input: creating a folder**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Folder Name | Name of the new folder |
| 2 | Description | Folder description |
| 3 | Content Type | `WebForm`, `WebGrid`, `Journal`, `Intercompany`, `ICTransaction`, `ICMatchAccount`, `ICMatchID`, `ICMatchTemplate`, `DataExplorer`, `Workspace`, `Custom`, `Task`, `Folder` or `All` |
| 4 | Security Class | Security class for the folder |
| 5 | Overwrite | `true` / `false` |
| 6 | Document Type | Not used |
| 7 | File Type | `Folder` |
| 8 | Private | `true` / `false` |
| 9 | Parent Folder | Folder to create it in (`\` isn't converted to root here) |

**Example**

```dart
LoadDocument("IncomeStatement","","C:\inputdir\IncomeStatement.wdf","[Default]","true","WebForm","Form","false","\Forms");
LoadDocument("Forms","Data forms","WebForm","[Default]","false","","Folder","false","");
```

### LoadRules

> [!NOTE]
> Loads (or scans) a rules file.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Load File | ✓ | Local rules file |
| Log File | ✓ | Local file for the log |
| Scan Only | | `true` to only check the file |

**Example**

```dart
LoadRules("C:\Hfm\Rules.rle","C:\Hfm\RulesLoad.log");
```

### LoadMemberLists

> [!NOTE]
> Loads (or scans) a member lists file.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Load File | ✓ | Local member lists file |
| Log File | ✓ | Local file for the log |
| Scan Only | | `true` to only check the file |

**Example**

```dart
LoadMemberLists("C:\Hfm\MemberLists.lst","C:\Hfm\MemberListsLoad.log");
```

### LoadData

> [!NOTE]
> Loads a native-format data file and waits for the task to finish (see [long-running tasks](00-automation-with-jhat.md#long-running-tasks)). The command fails if the task doesn't complete.

> [!WARNING]
> An unrecognized Mode is only logged as invalid usage. The load still runs with HFM's default handling of duplicates.

**Input**

All 6 parameters are required.

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Mode | `Merge`, `Replace`, `Accumulate`, `ReplaceBySecurity`, or `Scan` (check only) |
| 2 | Load File | Local data file |
| 3 | Log File | Local file for the log |
| 4 | Accumulate Within File | `true` / `false` |
| 5 | Contains Ownership Data | `true` / `false` |
| 6 | Delimiter | e.g. `;` |

**Example**

```dart
LoadData("Merge","C:\Hfm\Data.dat","C:\Hfm\DataLoad.log","false","false",";");
```

### StartLoadData

> [!NOTE]
> Identical to `LoadData`, including waiting for the load to finish.

**Input**

As for `LoadData`.

**Example**

```dart
StartLoadData("Merge","C:\Hfm\Data.dat","C:\Hfm\DataLoad.log","false","false",";");
```

### LoadPhaseInfo

> [!NOTE]
> Loads a phase submission data file and waits for the task to finish.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Mode | ✓ | `Merge`, or anything else for Replace |
| Load File | ✓ | Local file |
| Log File | ✓ | Local file for the log |
| Delimiter | ✓ | e.g. `;` |

**Example**

```dart
LoadPhaseInfo("Merge","C:\Hfm\Phases.dat","C:\Hfm\PhaseLoad.log",";");
```

### LoadJournal

> [!NOTE]
> Loads a journals file.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Load File | ✓ | Local journals file |
| Log File | ✓ | Local file for the log |
| Delimiter | ✓ | e.g. `;` |

**Example**

```dart
LoadJournal("C:\Hfm\Journals.jlf","C:\Hfm\JournalLoad.log",";");
```

### LoadModuleConfiguration

> [!NOTE]
> Loads a module configuration file. JHAT doesn't check the result, so it always reports success unless the call itself errors. Check the log.

**Input**

A third parameter is accepted and ignored.

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Load File | ✓ | Local configuration file |
| Log File | ✓ | Local file for the log |

**Example**

```dart
LoadModuleConfiguration("C:\Hfm\ModuleConfiguration.xml","C:\Hfm\ModuleConfiguration.log");
```
