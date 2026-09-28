# JHAT Commands: Extracts

[← Back to index](../README.md)

## Overview

Commands for extracting data, metadata, security, rules, member lists, journals, intercompany transactions and documents from HFM to local files, for example to back up an application or move content between applications. Most have a matching load command on the [Load](10-load.md) page.

The extract commands need an open application.

- **Output files** are extracted on the HFM server and copied to the local paths you give.
- **true/false parameters:** `true` (any case) means true. Any other value means false, unless a table says otherwise.

> [!WARNING]
> Most extract commands report **Successful** even when HFM reports that the extract failed. JHAT writes "Extract … failed" to its log but then marks the command successful anyway. Check the extract log rather than the command's status. The exceptions are `ExtractData`, `EAExtract`, `ExtractPhaseInfo` and `ExtractDataExtDim`, which wait for the task and report failure correctly.

## Lists

Several extract commands take a **list number** instead of a member name. Lists are held in memory for the rest of the script:

- **Numbers:** there are 25 of each kind, numbered `0` to `24`.
- **Kinds:** one set per dimension (Scenario, Year, Period, View, Entity, Value, Account, ICP), plus one set of plain string lists (dimension `""`).
- **Building them:** use `AddItemToList` and `AddItemsToListFromMemberlist`.
- **Resetting them:** `InitLists` empties every list, and `ClearList` empties one.

Using a list number that was never filled makes the command fail.

## Commands

**Commands on this page:**

[InitLists](#initlists), [ClearList](#clearlist), [AddItemsToListFromMemberlist](#additemstolistfrommemberlist), [AddItemToList](#additemtolist), [ExtractMetaData](#extractmetadata), [ExtractMetaDataExtDim](#extractmetadataextdim), [ExtractData](#extractdata), [EAExtract](#eaextract), [ExtractPhaseInfo](#extractphaseinfo), [ExtractSecurity](#extractsecurity), [ExtractSecurityExpanded](#extractsecurityexpanded), [ExtractJournal](#extractjournal), [ExtractJournalPlus](#extractjournalplus), [ExtractICTransactions](#extractictransactions), [ExtractRules](#extractrules), [ExtractMemberlists](#extractmemberlists), [ExtractDataExtDim](#extractdataextdim), [ExtractDocument](#extractdocument), [ExtractModuleConfiguration](#extractmoduleconfiguration)

### InitLists

> [!NOTE]
> Empties every list (all dimensions and all string lists).

**Input**

None

**Example**

```dart
InitLists();
```

### ClearList

> [!NOTE]
> Empties one list.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| List Number | ✓ | `0`–`24` |
| Dimension | ✓ | `Scenario`, `Year`, `Period`, `View`, `Entity`, `Value`, `Account`, `ICP`, or `""` for a string list. Any other value does nothing. |

**Example**

```dart
ClearList("1","Period");
```

### AddItemsToListFromMemberlist

> [!NOTE]
> Adds the members of an HFM member list to a list.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| List Number | ✓ | `0`–`24` |
| Dimension | ✓ | `Scenario`, `Year`, `Period`, `View`, `Entity`, `Value`, `Account` or `ICP`. Anything else fails with "Invalid dimension specified." String lists aren't supported. |
| Member List | ✓ | Member list name, e.g. `[Descendants]`, `[Base]` |
| Parent | ✓ | Parent member the list starts from |

**Example**

```dart
AddItemsToListFromMemberlist("9","Entity","[Descendants]","Regional");
```

### AddItemToList

> [!NOTE]
> Adds one item to a list.

> [!WARNING]
> Only `Period`, `Entity`, `Value`, `Account`, `ICP` and `""` (string list) are supported. For any other dimension, including `Scenario`, `Year` and `View`, nothing is added but the command still reports success.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| List Number | ✓ | `0`–`24` |
| Dimension | ✓ | `Period`, `Entity`, `Value`, `Account`, `ICP`, or `""` for a string list |
| Item | ✓ | Member name, or any text for a string list (e.g. a POV string for `Consolidate` or `SetLineItemDetail`) |

**Example**

```dart
AddItemToList("1","Value","[Elimination]");
AddItemToList("2","","S#Actual.Y#2023.P#Dec.E#Entity2");
```

### ExtractMetaData

> [!NOTE]
> Extracts application metadata. The file format comes from the extension of the output file: `.xml` gives XML, and anything else gives the native (`.app`) format.

> [!WARNING]
> The command reads parameters 8–11 as custom dimensions 1–4. If you pass them and the application has fewer than 4 custom dimensions, the command fails. Custom dimensions beyond the 4th are always extracted.

**Input**

The first 3 parameters are required. The rest are optional and positional. Any value you pass other than `true` means false. The Default column shows what applies when a parameter is left out.

| # | Parameter | Default | Comment |
| --- | --- | :---: | --- |
| 1 | Output File | | Local file for the extract |
| 2 | Log File | | Local file for the log |
| 3 | Delimiter | | e.g. `;` |
| 4 | Currencies | true | |
| 5 | Scenarios | true | |
| 6 | Entities | true | |
| 7 | Accounts | true | |
| 8–11 | Custom 1 – Custom 4 | true | One parameter per custom dimension |
| 12 | Consolidation Methods | true | |
| 13 | Application Settings | true | |
| 14 | System Accounts | false | `true` also turns on Accounts |
| 15 | Values | false | |
| 16 | ICPs | false | |
| 17 | Cell Text Labels | true | |

**Example**

```dart
ExtractMetaData("C:\hfm\outbox\Metadata.app","C:\hfm\outbox\MetadataExtract.log",";");
ExtractMetaData("C:\hfm\outbox\Metadata.xml","C:\hfm\outbox\MetadataExtract.log",";","true","true","true","true","true","true","true","true","true","true","false","true","true","true");
```

### ExtractMetaDataExtDim

> [!NOTE]
> Extracts application metadata, with dimensions chosen in a single string. This suits applications with any number of custom dimensions. The file format comes from the extension of the output file, as for `ExtractMetaData`.

**Input**

The first 3 parameters are required. The rest are optional and positional.

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Output File | Local file for the extract |
| 2 | Log File | Local file for the log |
| 3 | Delimiter | e.g. `;` |
| 4 | Dimensions | `Dim#true` / `Dim#false` entries joined with `.`, e.g. `S#false.E#true.I#true.C1#false`. See below. |
| 5 | Currencies | Extracted unless `false` |
| 6 | Application Settings | Extracted unless `false` |
| 7 | Consolidation Methods | Extracted unless `false` |
| 8 | System Accounts | Extracted only if `true` |
| 9 | Cell Text Labels | Extracted unless `false` |

Dimensions are extracted by default, except ICP and Value. In the Dimensions string:

- `S`, `E` and `A` can only be turned off (`#false`).
- `I` and `V` can only be turned on (`#true`).
- Custom dimensions can be turned on or off using `C1`, `C2`, … or their short names.

**Example**

```dart
ExtractMetaDataExtDim("C:\hfm\outbox\Metadata.app","C:\hfm\outbox\Metadata.log",";","I#true.V#true.C3#false","true","true","true","false","true");
```

### ExtractData

> [!NOTE]
> Extracts data for a scenario and year to a flat file (no header), and waits for the extract to finish.

The extract includes:

- **Value:** `<Entity Currency>` and `[None]`
- **Accounts:** base and system accounts
- **ICP:** base and system members
- **Custom dimensions:** base members. Custom 1 also includes `[ConsolMethods]`, and Custom 1–2 include `[Currencies]`.
- **Detail:** cell text and line item detail

> [!WARNING]
> JHAT only copies the data file when the server compresses it (`.gz`), which it decompresses. Otherwise only the log file is copied.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Output File | Local file for the data |
| 2 | Log File | Local file for the log |
| 3 | Delimiter | e.g. `;` |
| 4 | View | e.g. `YTD`, `Periodic`, or `Scenario` for `<Scenario View>` |
| 5 | Year | Year member |
| 6 | Scenario | Scenario member |
| 7 | Period List | Period list number, or `All` for every period |
| 8 | Entity List | Entity list number, or `All` for every entity |
| 9 | Account List | Account list number, or `All` for base accounts |
| 10 | Include Calculated Data | `true` / `false` |

Note the order: View, **Year**, then **Scenario**.

**Example**

```dart
InitLists();
AddItemToList("1","Period","Dec");
ExtractData("D:\Data_Extract.txt","D:\Data_Extract.log",";","YTD","2023","Actual","1","All","All","false");
```

### EAExtract

> [!CAUTION]
> **Not an Extended Analytics extract.** JHAT's usage text describes a 17-parameter extract to a database table (DSN, table prefix, …), but the command's code is a copy of `ExtractData`. It requires 17 parameters, reads the first 10 exactly as `ExtractData` does (so parameter 1 is used as the output file path, not a DSN), and ignores parameters 11–17. Use `ExtractData` instead.

**Input**

17 parameters. The first 10 are interpreted as for `ExtractData`, and the rest are ignored.

**Example**

```dart
EAExtract("D:\Data_Extract.txt","D:\Data_Extract.log",";","YTD","2023","Actual","All","All","All","false","","","","","","","");
```

### ExtractPhaseInfo

> [!NOTE]
> Extracts phase submission (phase group) data for all scenarios, years, periods and entities (Entity Currency, base accounts, ICPs and custom members), and waits for the extract to finish. The data file is copied only when the server compresses it, as for `ExtractData`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | Local file for the data |
| Log File | ✓ | Local file for the log |
| Delimiter | ✓ | e.g. `;` |

**Example**

```dart
ExtractPhaseInfo("C:\Voyager\Phase_Extract.dat","C:\Voyager\Phase_Extract.log",";");
```

### ExtractSecurity

> [!NOTE]
> Extracts all security (users, security classes, role access and security class access) in the native format. The file can be loaded with `LoadSecurity`.

> [!WARNING]
> JHAT's usage text shows 2 parameters, but the command needs 3. The delimiter is required.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | Local file for the extract |
| Log File | ✓ | Local file for the log |
| Delimiter | ✓ | e.g. `;` |

**Example**

```dart
ExtractSecurity("C:\Voyager\Security_Extract.sec","C:\Voyager\Security_Extract.log",";");
```

### ExtractSecurityExpanded

> [!NOTE]
> Extracts security in the native format, optionally choosing which parts to include.

**Input**

Pass either 3 parameters (everything is extracted) or all 7. With 4–6 parameters the extra ones are ignored and everything is extracted.

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Output File | Local file for the extract |
| 2 | Log File | Local file for the log |
| 3 | Delimiter | e.g. `;` |
| 4 | Users | `true` / `false` |
| 5 | Security Classes | `true` / `false` |
| 6 | Role Access | `true` / `false` |
| 7 | Security Class Access | `true` / `false` |

**Example**

```dart
ExtractSecurityExpanded("C:\Voyager\Security_Extract.sec","C:\Voyager\Security_Extract.log",";","true","true","false","false");
```

### ExtractJournal

> [!NOTE]
> Extracts journals for a scenario, year and optionally one period. All statuses, journal types and balance types are included. To filter by entity, label, group, status or type, use `ExtractJournalPlus`.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Output File | Local file for the extract |
| 2 | Log File | Local file for the log |
| 3 | Standard | `true` to include standard templates |
| 4 | Recurring | `true` to include recurring templates |
| 5 | Regular | `true` to include regular journals |
| 6 | Scenario | Scenario member, or `""` for the default POV's scenario |
| 7 | Year | Year member, or `""` for the default POV's year |
| 8 | Period | Period member, or `All` / `<All>` / `""` for all periods |
| 9 | Delimiter | e.g. `;` |

Parameters 3–5 must be exactly `true` to count. For example, `"True "` with a trailing space counts as false.

**Example**

```dart
ExtractJournal("C:\Hfm\JournalExtract.jlf","C:\Hfm\JournalExtract.log","true","true","true","Actual","2023","All",";");
```

### ExtractJournalPlus

> [!NOTE]
> Extracts journals with full control over periods, entities, values, labels, groups, statuses, types and balance types.

**Input**

All 24 parameters are required.

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Output File | Local file for the extract |
| 2 | Log File | Local file for the log |
| 3–5 | Standard, Recurring, Regular | `true` / `false`, as for `ExtractJournal` |
| 6 | Scenario | Scenario member |
| 7 | Year | Year member |
| 8 | Period List | Period list number, or `All` |
| 9 | Entity List | Entity list number, or `All` |
| 10 | Value List | Value list number, or `All` |
| 11 | Labels | Journal labels separated by `;`, or `""` for all |
| 12 | Groups | Journal groups separated by `;`, or `""` for all |
| 13–17 | Statuses | `true` / `false` for Working, Submitted, Approved, Rejected, Posted |
| 18–20 | Types | `true` / `false` for Regular, Auto Reversing, Auto Reversal |
| 21–23 | Balance Types | `true` / `false` for Balanced, Unbalanced, Balanced by Entity |
| 24 | Delimiter | e.g. `;` |

The status, type and balance type names follow the earlier version of this page. The code only uses numeric codes (statuses 1–5, types 1/4/8, balance types 1/2/4).

**Example**

```dart
ExtractJournalPlus("C:\JournalsTest.jlf","C:\JournalsTest.log","false","false","true","Actual","2023","All","All","All","","","true","false","false","false","false","true","true","true","true","true","true",";");
```

### ExtractICTransactions

> [!NOTE]
> Extracts intercompany transactions for a scenario, year and period. No log file is produced.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Output File | Local file for the extract |
| 2 | Scenario | Scenario member |
| 3 | Year | Year member |
| 4 | Period | Period member |
| 5 | Entity List | Entity list number (or string list with that number if the entity list is empty), or `All` |
| 6 | Partner List | ICP list number (or string list with that number if the ICP list is empty), or `All` |
| 7 | Unmatched | `yes` to include unmatched transactions. Anything else means no. |
| 8 | Matched | `yes` / `no` |
| 9 | Mismatched | `yes` / `no` |
| 10 | Posted | `yes` / `no` |
| 11 | Unposted | `yes` / `no` |
| 12 | Reason Code | `yes` / `no` |
| 13 | Transaction Currency | Currency to filter on, or `""` |
| 14 | Match Code | Match code to filter on, or `""` for none |

**Example**

```dart
ExtractICTransactions("C:\ICM\Extract1.trn","Actual","2023","Dec","All","All","yes","yes","yes","yes","yes","yes","","");
```

### ExtractRules

> [!NOTE]
> Extracts the application's rules (its calculation, translation and consolidation logic), for example to back them up before loading new rules with `LoadRules`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Rule File Format | ✓ | Rules file format name (any case), e.g. `RLE` or `XML`. An unknown format makes the command fail. |
| Output File | ✓ | Local file for the rules |
| Log File | ✓ | Local file for the log |

**Example**

```dart
ExtractRules("RLE","C:\Output\rules.rle","C:\Output\rules.log");
```

### ExtractMemberlists

> [!NOTE]
> Extracts the application's member lists file, which defines the named member lists (such as `[Base]` alternatives) used in forms, grids and scripts. It can be loaded with `LoadMemberLists`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | Local file for the member lists |
| Log File | ✓ | Local file for the log |

**Example**

```dart
ExtractMemberlists("C:\Output\memberlists.lst","C:\Output\memberlists.log");
```

### ExtractDataExtDim

> [!NOTE]
> Extracts data for any POV (member lists allowed), with full control over what is included, and waits for the extract to finish. The data file is copied only when the server compresses it, as for `ExtractData`.

**Input**

All 12 parameters are required.

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | POV | POV string with member lists, e.g. `S#Actual.Y#2023.P{[Base]}.W#YTD.E{[Base]}.V#<Entity Currency>.A{[Base]}.I{[Base]}.C1{[Base]}.C2{[Base]}.C3{[Base]}.C4{[Base]}` |
| 2 | Include Header | `true` / `false` |
| 3 | Include Data | `true` / `false` |
| 4 | Include Dynamic Accounts | `true` / `false` |
| 5 | Include Calculated Data | `true` / `false` |
| 6 | Include Derived Data | `true` / `false` |
| 7 | Line Item Details | `Individual` or `Detail` for line item detail, `Summary` for a summary, anything else (e.g. `""`) to exclude |
| 8 | Include Cell Text | `true` / `false` |
| 9 | Include Phase Data | `true` / `false` |
| 10 | Delimiter | e.g. `;` |
| 11 | Output File | Local file for the data |
| 12 | Log File | Local file for the log |

**Example**

```dart
ExtractDataExtDim("S#Actual.Y#2023.P{[Base]}.W#YTD.E{[Base]}.V#<Entity Currency>.A{[Base]}.I{[Base]}.C1{[Base]}.C2{[Base]}.C3{[Base]}.C4{[Base]}","true","true","false","false","false","","false","false",";","C:\Output\data.txt","C:\Output\data.log");
```

### ExtractDocument

> [!NOTE]
> Saves a document from Document Manager to a local file, encoded as UTF-16LE.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Document Name | ✓ | Name of the document |
| Output File | ✓ | Local file to write |
| Document Type | ✓ | e.g. `WebForm` (see [Document and file types](05-documents.md#document-and-file-types)) |
| File Type | ✓ | e.g. `Form` |
| Folder | ✓ | Document Manager folder, or `\` for the root |

**Example**

```dart
ExtractDocument("IncomeStatement","C:\Output\IncomeStatement.xml","WebForm","Form","\Forms\Actuals");
```

### ExtractModuleConfiguration

> [!NOTE]
> Extracts the application's module configuration: which modules (such as journals, intercompany transactions and equity pickup) are enabled. It can be loaded with `LoadModuleConfiguration`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Output File | ✓ | Local file for the configuration |
| Log File | ✓ | Local file for the log |

**Example**

```dart
ExtractModuleConfiguration("C:\Output\modules.xml","C:\Output\modules.log");
```
