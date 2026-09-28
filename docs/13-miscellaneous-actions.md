# JHAT Commands: Miscellaneous Actions

[← Back to index](../README.md)

## Overview

Commands for managing data (copying, clearing and cleaning it up), calculating ownership, reading member properties, changing HFM system settings and ending a script.

## Commands

These commands need an open application, except `exit`. Where a parameter takes a **list number**, use a list built with `AddItemToList` or `AddItemsToListFromMemberlist` (see [Extracts](07-extracts.md#lists)), or `All`.

**Commands on this page:**

[CalculateOwnership](#calculateownership), [CopyData](#copydata), [ClearData](#cleardata), [DeleteInvalidRecords](#deleteinvalidrecords), [exit](#exit), [UpdateParameter](#updateparameter), [GetMemberProperties](#getmemberproperties)

### CalculateOwnership

<p class="callout info">Calculates ownership from the shares data entered in Manage Ownership, like HFM's Calculate Ownership command. For each entity it can calculate percent control, consolidation method, percent ownership, percent consolidation and direct percent ownership. Parameters 5–9 choose which of these are calculated.</p>

<p class="callout warning">Mode <code>Descendants</code> must be spelled <code>Decendants</code> (as in the code). The correct spelling isn't recognized and falls back to all entities.</p>

**Input**

All 10 parameters are required. Flags count only when exactly `true` (any case).

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Scenario | Scenario member |
| 2 | Year | Year member |
| 3 | Period List | Period list number, or `All` |
| 4 | Parent | Parent entity for the calculation |
| 5 | Percent Control | `true` / `false` |
| 6 | Consolidation Method | `true` / `false` |
| 7 | Percent Ownership | `true` / `false` |
| 8 | Percent Consolidation | `true` / `false` |
| 9 | Direct Percent Ownership | `true` / `false` |
| 10 | Mode | `Current Entity` (the parent only), `Decendants` (all below the parent), or anything else for all entities in the application |

**Example**

```dart
InitLists();
AddItemToList("1","Period","Dec");
CalculateOwnership("Actual","2023","1","Group","true","true","true","true","true","All Entities");
```

### CopyData

<p class="callout info">Copies data from one scenario and year to another, for example to seed a forecast from actuals. The server's log is copied to a local file.</p>

**Input**

All 17 parameters are required. Flags count only when exactly `true` (any case).

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Source Scenario | |
| 2 | Destination Scenario | |
| 3 | Source Year | |
| 4 | Destination Year | |
| 5 | Source Period List | Period list number, or `All` |
| 6 | Destination Period List | Period list number, or `All` |
| 7 | Entity List | Entity list number, or `All` |
| 8 | Account List | Account list number, or `All` |
| 9 | Log File | Local file for the log |
| 10 | Scale Factor | Factor to multiply the data by, or `""` for none |
| 11 | Copy Cell Text | `true` / `false` |
| 12 | Copy Derived Data | `true` / `false` |
| 13 | Copy Mode | `Merge`, `Replace`, or anything else for Accumulate |
| 14 | View | e.g. `YTD`, `Periodic` |
| 15 | Copy Entity Currency Data | `true` / `false` |
| 16 | Copy Rates and System Data | `true` / `false` |
| 17 | Detailed Logging | `true` / `false` |

JHAT's usage text shows placeholder labels for parameters 15–17. They are true/false flags.

**Example**

```dart
InitLists();
AddItemToList("1","Period","Jan");
AddItemToList("2","Period","Jan");
CopyData("Actual","Budget","2023","2024","1","2","All","All","C:\Output\copydata.log","","true","false","Replace","YTD","true","false","false");
```

### ClearData

<p class="callout info">Clears data for a scenario and year, and copies the server's log to a local file.</p>

<p class="callout danger">Be careful when running this command.</p>

<p class="callout warning">Because of a bug, Clear Rates and System Data only takes effect when Detailed Logging is also <code>true</code>.</p>

**Input**

All 9 parameters are required. Flags count only when exactly `true` (any case).

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Scenario | |
| 2 | Year | |
| 3 | Period List | Period list number, or `All` |
| 4 | Entity List | Entity list number, or `All` |
| 5 | Account List | Account list number, or `All` |
| 6 | Clear Rates and System Data | `true` / `false` (see warning) |
| 7 | Detailed Logging | `true` / `false` |
| 8 | Clear Data | `true` / `false` |
| 9 | Log File | Local file for the log |

**Example**

```dart
ClearData("Actual","2023","All","All","All","false","true","true","C:\Output\cleardata.log");
```

### DeleteInvalidRecords

<p class="callout info">Runs HFM's Delete Invalid Records task, which removes data stored at intersections that are no longer valid, typically after metadata changes. Its log is copied to a local file.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Option | ✓ | `true` / `false`, passed to HFM's clear-invalid-records call. The earlier version of this page called it "Clear Invalid Records?". The code doesn't name it. |
| Log File | ✓ | Local file for the log |

**Example**

```dart
DeleteInvalidRecords("false","C:\Output\InvalidRecords.log");
```

### exit

<p class="callout warning">Stops JHAT immediately with exit code 0. The rest of the script is skipped. The application isn't closed and the user isn't logged out.</p>

**Input**

None

**Example**

```dart
exit();
```

### UpdateParameter

<p class="callout info">Sets an HFM system parameter by writing directly to the <code>XFM_PARAMETERS</code> table in the HFM database, for cluster, server and application <code>ALL</code>. JHAT connects with the database credentials from the EPM registry, and records the logged-on user as <code>UpdatedBy</code>. Needs <code>Logon</code>. Fails if no row matches the parameter name.</p>

<p class="callout danger">This bypasses HFM and changes the database directly. Before connecting, it also prints every database connection property to the console, <b>including the database password</b>. Don't capture JHAT's console output where others can read it.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Parameter Name | ✓ | `ParameterName` in `XFM_PARAMETERS` |
| Value | ✓ | New value |

**Example**

```dart
UpdateParameter("<Parameter Name>","<Value>");
```

### GetMemberProperties

<p class="callout info">Writes the properties of one or more members to a UTF-8 file. For each member it writes the dimension, default parent, name and description, followed by one <code>Property:value</code> line per property.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Dimension | ✓ | Dimension name |
| Members | ✓ | Member names separated by commas |
| Output File | ✓ | Local file to write |

**Example**

```dart
GetMemberProperties("Entity","Entity1,Entity2","C:\Output\entityprops.txt");
```
