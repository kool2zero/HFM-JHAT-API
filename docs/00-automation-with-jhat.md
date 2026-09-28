# Automation with JHAT

[← Back to index](../README.md)

## Overview

> Adapted from: [https://neonn.com/alwayson/using-jhat-automate-hfm-tasks/](https://neonn.com/alwayson/using-jhat-automate-hfm-tasks/)

The `JHAT` tool is another way to automatize tasks using a batch file and the HFM API. `JHAT` offers the opportunity to use any scheduler to launch HFM tasks and provide a better flexibility than Task Flows.

## How does it work?

`JHAT` utility is present in the path hereunder:

`E:\Oracle\Middleware\EPMSystem11R1\products\FinancialManagement\Server\jhat.bat`

The batch file embeds all libraries, paths and other references to execute HFM tasks.

Before the first run, it’ mandatory to create `setenv.cmd` file and set the parameter `EPM_ORACLE_INSTANCE_FOR_JHAT` to point to the EPM instance:

<img src="https://raw.githubusercontent.com/kool2zero/HFM-JHAT-API/main/img/a2Rimage.png?sanitize=true&raw=true" />

## JHAT usage

A text file (the script) lists the commands to run against HFM, one per line. A typical script looks like this:

```text
' Month-end consolidation
Logon("false","","user","password");
OpenApplication("HFMCluster","COMMA");
SetPOV("Actual","2023","Dec","YTD","Group.Entity1","<Entity Currency>","[None]","[ICP None]","[None]","[None]","[None]","[None]");
Consolidate("Impacted");
CloseApplication();
Logout();
```

**Example:**

<img src="https://raw.githubusercontent.com/kool2zero/HFM-JHAT-API/main/img/azXimage.png?sanitize=true&raw=true" />

> [!NOTE]
> In most cases, you will need to call the `Logon`, `OpenApplication`, `CloseApplication` and `Logout` commands as part of the script execution.

> [!NOTE]
> Certain commands will necessitate running the `SetPOV` command.

> [!WARNING]
> The JHAT API is not fully documented by Oracle. This documentation is based on examples from others and on the decompiled JHAT source.

## Script syntax

JHAT reads the script as follows:

- **One command per line.** A command can't span several lines.
- **Command name:** the text before the first `(`, ignoring case. A line without `(` is skipped. An unknown command name is printed to the console as "Invalid function name … Ignoring it" and skipped.
- **Comments:** lines starting with `'`, `!` or `#` are skipped.
- **Arguments:** everything from the first `(` to the first `")` on the line. Each argument is the text between a pair of double quotes. Anything outside the quotes is ignored, including commas, spaces and the trailing `;`.

This has some consequences:

- **Every argument must be in straight double quotes** (`"`). Unquoted values are dropped: `Delay(5000);` has no arguments and fails the parameter check, while `Delay("5000");` works. Typographic quotes (“ ”) aren't recognized.
- **An argument can't contain `"`**, and there is no escape character. An argument containing `")` cuts the line short.
- **Empty arguments are written `""`.**

The whole script is read and checked before anything runs. The script file's encoding is detected automatically.

## Running a script

```bat
jhat.bat -I"E:\JHAT\script.txt" -O"E:\JHAT\script.log"
```

JHAT reads options as a letter followed **directly** by its value, with no space (`-IE:\JHAT\script.txt` or `-I"E:\JHAT\script.txt"`). An option written as `-I E:\JHAT\script.txt` gets an empty value, so the script isn't found. Arguments that don't start with `-` are ignored. This describes how JHAT's Java code reads its arguments. `jhat.bat` itself wasn't part of the source reviewed.

| Option | Meaning |
| --- | --- |
| `-I<file>` | Script to run. Required. |
| `-O<file>` | Log file to write. Effectively required: JHAT fails without it. The file is overwritten on each run. |
| `-X1` | Stop the script at the first failed command (same as `AbortOnError("true")`). |
| `-W<minutes>` | How long to wait for a long-running task. Default `60`. |
| `-L<ms>` | Poll interval while waiting for a long-running task. Default `2000`. The `ASYNC_TASK_POLL_MILLI_SECONDS` environment variable takes precedence if set. |
| `-M<file>` | Load a macro file before the script runs (same format as `LoadMacros`). |
| `-B<folder>` | Sets the `__@BASEDIR__` macro. |
| `-H` | Print help, then exit without running anything. |
| `-A`, `-E`, `-R`, `-P`, `-S`, `-T` | Accepted but have no effect. In particular, `-A1` doesn't append to the log. |

Any other option fails with "Argument … Not Valid". Use `jhat.bat -H` to see JHAT's own help:

<img src="https://raw.githubusercontent.com/kool2zero/HFM-JHAT-API/main/img/qIJimage.png?sanitize=true&raw=true" />

> [!WARNING]
> JHAT's help shows `-I` and `-O` the wrong way round in its usage line: `-I` is the script and `-O` is the log.

> [!NOTE]
> This utility can be used to launch consolidations, data load, data extraction, etc...

## How a script runs

1. **Read:** every line is read and turned into a command. Commands with the wrong number of parameters are reported as syntax errors. Syntax errors and unknown command names are printed to the **console only**, not to the `-O` log file, which only gets their counts in the summary.
2. **Loops:** `BeginLoop` … `EndLoop` blocks are expanded (see [Runtime Actions](16-runtime-actions.md)).
3. **Run:** commands run in order. Before each one, [macros](11-macros.md) in its arguments are replaced.
   - **Syntax errors:** commands with a syntax error are **skipped**, and the rest of the script still runs.
   - **Abort on error:** if it's on (`-X1` or `AbortOnError`), the script stops after the first command that fails.
4. **Log:** each command's log block is written to the `-O` file as it finishes, followed by `Action elapsed time: HH:mm:ss.SSS`. At the end, every command's log is also printed to the console.
5. **Summary:** written to the console and the log. It gives the total commands, execution errors (split into positive and negative test failures), syntax errors, invalid function names, file compare errors and elapsed time. `Aborting the script ...` is written first if the script was stopped by abort on error.

**Built-in macros** are set before the script runs:

| Macro | Value |
| --- | --- |
| `__@SCRIPTDIR__` | Folder containing the script |
| `__@MACROFILEDIR__` | The `JHAT_MACRODIR` Java system property, else the `JHAT_MACRODIR` environment variable, else the script folder |
| `__@BASEDIR__` | The `-B` value, if given |

> [!WARNING]
> **JHAT's exit code doesn't reflect failures.** It exits with 1 only when it can't start or the command-line options are invalid (including `-H`). Otherwise it exits with 0, even if commands failed or the script was aborted. To detect failures from a scheduler, check the summary in the log (for example, search for `0 execution error(s)`).

## What commands need

| Before the command, run | Commands |
| --- | --- |
| Nothing | [Runtime Actions](16-runtime-actions.md), [Macros](11-macros.md), `Logon`, `exit` |
| `Logon` | `OpenApplication`, the create, copy, modify and delete application commands, `SetPreferences`, `GetPreferences` (see [Application](02-application.md)), and `UpdateParameter` |
| `Logon` and `OpenApplication` | All other commands |
| Also `SetPOV` or `SetPOVExtDim` | Commands that act on a cell or process unit: most [Data Grid](04-data-grid.md) commands, the [Process Management](14-process-management.md) process flow commands, `CalcEPU`, `ExecuteOnDemandRule`, `GetAdjustments`, and `GetForm` when it uses the script POV |

## Command name patterns

Many commands come in variants. The suffix tells you how the variant differs:

- **ExtDim** ("extended dimensionality"): takes dimensions as a single string instead of one parameter per dimension, so it works with any number of custom dimensions. HFM 11.1.2.2 and later allow more than the classic four (Custom1–Custom4). Examples: `SetPOVExtDim`, `DefineGridExtDim`, `ExtractMetaDataExtDim`, `LoadMetaDataExtDim`, `ExtractDataExtDim`.
- **Expanded:** more options than the base command (`LoadSecurityExpanded`, `ExtractSecurityExpanded`).
- **Plus:** more filters (`ExtractJournalPlus`).
- **Enhanced:** works on a named cell text label (`SetCellTextEnhanced`, `GetCellTextEnhanced`, …).

Some variants are simply identical, such as `SetPOV` / `SetPOVName`, `CreateApplicationCAS` / `CreateApplicationExtDim`, and `LoadData` / `StartLoadData`. Each page says so where it applies.

## Parameter checking

Before a command runs, JHAT checks how many parameters it was given:

- Most commands need exactly the number of parameters shown on their page.
- A few accept several counts (for example, `CreateApplicationCAS` accepts 7 or 8).

If the count is wrong, the command is reported as a syntax error ("Incorrect number of parameters.", with the script line number, the parameters you passed, and the command's expected usage) and is **skipped**. These details go to the console only, not to the log file. The rest of the script still runs, even with abort on error turned on.

> [!WARNING]
> For commands whose parameter count is a range, JHAT's check never fails. This covers `GetForm`, `FilterProcessControlGrid`, `GetCalcStatusSummary`, `ExtractMetaData`, `ExtractMetaDataExtDim`, `ExtractSecurityExpanded`, `LoadMetaDataExtDim`, `LoadICTransactions`, `LoadDocument`, `OpenICPeriod`, `UpdateICPeriod` and `DefineMacroEx`. Passing too few parameters makes the command crash partway through instead of failing with a clear message.

> [!WARNING]
> Don't rely on a command's **Successful** status alone. Many load and extract commands report success even when HFM reports that the operation failed; see the [Load](10-load.md) and [Extracts](07-extracts.md) pages. Several other commands write HFM's errors to the log without failing.

## Log output

Each command writes a block to the log:

```
**********OpenApplication : Successful**********
Start execution of action(script line 2) at <timestamp>
Successful
End execution at <timestamp>
```

- When a command fails, the header reads `Failed` and is followed by `Line No: <n>`.
- When a command stops with an error, the log shows `Encountered unexpected exception <message>` followed by a Java stack trace. Some commands raise errors without a message, so the line reads `Encountered unexpected exception null`. The lines just above it usually say what was wrong (for example, `Invalid type specified`).
- `Comment`, `LoadMacros` and `SubstituteMacro` are not logged.
- While `SetNegativeTestingFlag` is on, each header is marked `: Negative Testcase`.

## Long-running tasks

JHAT polls HFM until a task such as a consolidation, load or extract finishes:

| Setting | Value |
| --- | --- |
| Poll interval | 2000 ms by default. Set with `-L`, or with the `ASYNC_TASK_POLL_MILLI_SECONDS` environment variable (e.g. in `setenv.cmd`), which takes precedence. |
| Task start timeout | JHAT stops monitoring if no running task appears within 30 seconds. |
| Overall timeout | JHAT stops waiting after 60 minutes by default. Set with `-W`. |

When the task finishes, its log file is downloaded from the server. For data extracts, the data file is downloaded too.
