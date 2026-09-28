# JHAT Commands: Journal Reports

[← Back to index](../README.md)

## Overview

Commands for writing journal listings to files and for running system reports (journal, intercompany, equity pickup and intercompany matching reports) whose definitions are stored in Document Manager.

## Commands

These commands need an open application.

**Commands on this page:**

[GetAutoJournalReportWithFilter](#getautojournalreportwithfilter), [GetAutoJournalReport](#getautojournalreport), [GenerateReport](#generatereport)

### GetAutoJournalReportWithFilter

<p class="callout info">Same as <code>GetAutoJournalReport</code>, but first sets the session's journal filter to the given entity and group filters (the new filters are written to the log). The filter is cleared again afterwards.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| POV | ✓ | As for `GetAutoJournalReport` |
| Output File | ✓ | Local file to write |
| Entity Filter | ✓ | |
| Group Filter | ✓ | |

**Example**

```dart
GetAutoJournalReportWithFilter("S#Actual.Y#2023.P#Dec.V#<Entity Curr Adjs>","C:\Output\journals.txt","Entity1","");
```

### GetAutoJournalReport

<p class="callout info">Writes every journal for a scenario, year, period and value (using the session's current journal filter) to a UTF-8 file.</p>

For each journal, the file contains:

- **Header:** `Label:`, `Status:`, `Description:` (truncated) and `Group:` lines.
- **Entries:** a semicolon-separated header `Entity;Account;ICP;<custom dimensions>;Description;Debit;Credit`, then one line per entry.
- **End:** a dashed separator line.

Unit entries have `null` in the debit and credit columns.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| POV | ✓ | POV string with `S#`, `Y#`, `P#` and `V#`, e.g. `S#Actual.Y#2023.P#Dec.V#<Entity Curr Adjs>` |
| Output File | ✓ | Local file to write |

**Example**

```dart
GetAutoJournalReport("S#Actual.Y#2023.P#Dec.V#<Entity Curr Adjs>","C:\Output\journals.txt");
```

### GenerateReport

<p class="callout info">Runs a report definition stored in Document Manager, waits for it to finish, and copies the result to a local file. The command fails if the report task doesn't complete.</p>

<p class="callout warning">JHAT's parameter-count setting allows 5 or 6 parameters, but the command always reads the 6th. Pass all 6, using <code>""</code> for no POV override.</p>

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Folder | Document Manager folder of the report definition, or `\` for the root |
| 2 | Report Name | Name of the report definition |
| 3 | Report Type | `journal`, `intercompany`, `EPU`, `ICTransactions`, `IC Match By Account` or `IC Match By ID` (any case). Anything else fails with "Invalid report type". |
| 4 | Report Format | Format name, **case-sensitive**. The earlier version of this page listed `HFM_FORMAT`, `PDF_FORMAT`, `RTF_FORMAT`, `HTML_FORMAT`, `XLS_FORMAT` and `XLSX_FORMAT`. |
| 5 | Output File | Local file to write |
| 6 | POV Override | POV string to use instead of the report's own POV, or `""` |

**Example**

```dart
GenerateReport("\","JournalDetail","journal","PDF_FORMAT","C:\Output\journals.pdf","");
```
