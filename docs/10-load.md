# JHAT Commands: Load

[← Back to index](../README.md)

#### Overview

These JHAT Commands have to do with Loading Data, Journals, etc.

The load commands need an open application.

- **Files:** each command copies your local load file to the HFM server, runs the load, and copies HFM's log back to the log path you give.
- **Log copy failures:** if the log can't be copied, JHAT only notes it in its own log. The command doesn't fail.
- **true/false parameters:** count only when exactly `true` (any case).

<p class="callout warning">Most load commands report <b>Successful</b> even when HFM reports that the load failed. JHAT writes "Load … failed" to its log but then marks the command successful anyway. Check the load log, or the "failed" line in JHAT's log, rather than the command's status. The exceptions are <code>LoadData</code>, <code>StartLoadData</code>, <code>LoadPhaseInfo</code> and <code>LoadICTransactions</code>, which wait for the task and report failure correctly.</p>

#### Commands

<details id="bkmrk-LoadSecurity-"><summary>LoadSecurity</summary>

<p class="callout info">Loads a security file, including all parts (users, security classes, role access and security class access).</p>

<p class="callout warning">JHAT's usage text lists 9 parameters, but this command only accepts exactly 5. To choose which parts to load, use <code>LoadSecurityExpanded</code>.</p>

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

</details><details id="bkmrk-LoadSecurityExpanded-"><summary>LoadSecurityExpanded</summary>

<p class="callout info">Loads a security file, choosing which parts to load.</p>

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

</details><details id="bkmrk-LoadMetaData-"><summary>LoadMetaData</summary>

<p class="callout info">Loads a metadata file. The format comes from the file extension: `.xml` loads XML, and anything else loads the native (`.app`) format.</p>

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

</details><details id="bkmrk-LoadMetaDataExtDim-"><summary>LoadMetaDataExtDim</summary>

<p class="callout info">Loads a metadata file, with dimensions chosen in a single string. The format comes from the file extension, as for <code>LoadMetaData</code>.</p>

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

<p class="callout warning">If you name any custom dimension, name all of them. JHAT builds the custom dimension list only from the ones you name, so leaving some out can shift the settings onto the wrong dimensions.</p>

**Example**

```dart
LoadMetaDataExtDim("C:\Hfm\Metadata.app","C:\Hfm\MetadataLoad.log",";","Merge","false","I#true.V#true");
```

</details><details id="bkmrk-LoadICTransactions-"><summary>LoadICTransactions</summary>

<p class="callout info">Loads (or scans) an intercompany transactions file and waits for the task to finish.</p>

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

</details><details id="bkmrk-LoadDocument-"><summary>LoadDocument</summary>

<p class="callout info">Loads a local file into Document Manager, or creates a Document Manager folder when File Type is <code>Folder</code>. The command needs all 9 parameters, though JHAT doesn't check the count.</p>

**Input: loading a document**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Name | Document name in Document Manager |
| 2 | Description | Not used when loading a document |
| 3 | Local File | Local file to load |
| 4 | Security Class | Security class for the document |
| 5 | Overwrite | `true` / `false` |
| 6 | Document Type | Type of document (see [Documents](05-documents.md)) |
| 7 | File Type | File type of document |
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
LoadDocument("IncomeStatement","","C:\inputdir\IncomeStatement.wdf","[Default]","true","<Document Type>","<File Type>","false","\Forms");
LoadDocument("Forms","Data forms","WebForm","[Default]","false","","Folder","false","");
```

</details><details id="bkmrk-LoadRules-"><summary>LoadRules</summary>

<p class="callout info">Loads (or scans) a rules file.</p>

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

</details><details id="bkmrk-LoadMemberLists-"><summary>LoadMemberLists</summary>

<p class="callout info">Loads (or scans) a member lists file.</p>

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

</details><details id="bkmrk-LoadData-"><summary>LoadData</summary>

<p class="callout info">Loads a native-format data file and waits for the task to finish (see <a href="00-automation-with-jhat.md#long-running-tasks">long-running tasks</a>). The command fails if the task doesn't complete.</p>

<p class="callout warning">An unrecognized Mode is only logged as invalid usage. The load still runs with HFM's default handling of duplicates.</p>

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

</details><details id="bkmrk-StartLoadData-"><summary>StartLoadData</summary>

<p class="callout info">Identical to <code>LoadData</code>, including waiting for the load to finish.</p>

**Input**

As for `LoadData`.

**Example**

```dart
StartLoadData("Merge","C:\Hfm\Data.dat","C:\Hfm\DataLoad.log","false","false",";");
```

</details><details id="bkmrk-LoadPhaseInfo-"><summary>LoadPhaseInfo</summary>

<p class="callout info">Loads a phase submission data file and waits for the task to finish.</p>

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

</details><details id="bkmrk-LoadJournal-"><summary>LoadJournal</summary>

<p class="callout info">Loads a journals file.</p>

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

</details><details id="bkmrk-LoadModuleConfiguration-"><summary>LoadModuleConfiguration</summary>

<p class="callout info">Loads a module configuration file. JHAT doesn't check the result, so it always reports success unless the call itself errors. Check the log.</p>

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

</details>
