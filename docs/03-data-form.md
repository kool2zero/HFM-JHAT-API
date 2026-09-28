# JHAT Commands: Data Form

[← Back to index](../README.md)

## Overview

These commands are related to the Data Form

## Commands

**Commands on this page:**

[GetForm](#getform), [ExecuteOnDemandRule](#executeondemandrule)

### GetForm

<p class="callout info">Runs a data form stored in Document Manager and saves the result to an output file as an HTML table. Each data cell is written as <code>value(cell status)</code> (see <a href="04-data-grid.md#status-text">Status text</a>).</p>

<p class="callout warning">When "Use script POV" is <code>true</code>, the form definition is saved back to Document Manager with the <code>SetPOV</code> POV as its background POV. This permanently changes the stored form.</p>

<p class="callout warning">JHAT's built-in usage text lists 12 parameters, but the command reads at most 10. It has no parameters for row or column header repeats; column header repeats are always turned off.</p>

**Input**

The first four parameters are required. The six suppression parameters are optional and positional. `true` (any case) turns the option on, and any other value turns it off. If you leave a suppression parameter out, the form's own setting is used.

| # | Parameter | Mandatory | Comment |
| --- | --- | :---: | --- |
| 1 | Path | ✓ | Folder in Document Manager where the form is stored |
| 2 | Form Name | ✓ | Name of the form |
| 3 | Output File | ✓ | Local path of the HTML file to write. Overwritten if it exists. |
| 4 | Use script POV | ✓ | `true`: use the POV set by `SetPOV` as the form's background POV (and save it to the form). Any other value: use the POV defined in the form. |
| 5 | Suppress No Data Rows | | `true` / `false` |
| 6 | Suppress Zero Rows | | `true` / `false` |
| 7 | Suppress Invalid Rows | | `true` / `false` |
| 8 | Suppress No Data Columns | | `true` / `false` |
| 9 | Suppress Zero Columns | | `true` / `false` |
| 10 | Suppress Invalid Columns | | `true` / `false` |

**Example**

```dart
GetForm("\Forms\Actuals", "IncomeStatement", "C:\Output\IncomeStatement.html", "false");
GetForm("\Forms\Actuals", "IncomeStatement", "C:\Output\IncomeStatement.html", "false", "true", "true", "true", "false", "false", "false");
```

### ExecuteOnDemandRule

<p class="callout info">Runs an On Demand Rule against the POV set by <code>SetPOV</code>. The rule must already be loaded in the application's rules file. If the server returns an error message, the command fails with that message.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Rule Name | ✓ | Name of the On Demand Rule to run |

**Example**

```dart
SetPOV("Actual","2023","Dec","YTD","Group.Entity1","<Entity Currency>","Sales","[ICP None]","[None]","[None]","[None]","[None]");
ExecuteOnDemandRule("RuleName");
```
