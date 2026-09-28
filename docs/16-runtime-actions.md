# JHAT Commands: Runtime Actions

[← Back to index](../README.md)

## Overview

Commands that control how a script runs (loops, delays, abort on error, running other programs), time parts of a script, and compare or edit local files. Comparing files is useful for testing, for example checking an extract against a known-good copy. These commands don't need an open application.

## Commands

These commands don't need an open application.

**Commands on this page:**

- **Script control:** [Delay](#delay), [BeginLoop](#beginloop), [EndLoop](#endloop), [AbortOnError](#abortonerror), [SetNegativeTestingFlag](#setnegativetestingflag), [CallOtherProcess](#callotherprocess)
- **Timers:** [StartTimer](#starttimer), [StopTimer](#stoptimer)
- **Files:** [ReplaceLineInTextFile](#replacelineintextfile), [CompareFiles](#comparefiles), [CompareFilesContentNotOrdered](#comparefilescontentnotordered), [CompareMultipleFiles](#comparemultiplefiles)

### Script control

#### Delay

> [!NOTE]
> Pauses the script.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Interval | ✓ | Time to wait, in **milliseconds** |

**Example**

```text
Delay("5000");
```

#### BeginLoop

> [!NOTE]
> Repeats the commands between `BeginLoop` and the next `EndLoop` the given number of times in total. JHAT expands the loop before the script starts, by copying the commands.

> [!WARNING]
> Don't nest loops. JHAT's nesting check never triggers, so a nested loop doesn't repeat as you'd expect. Log entries of the repeated copies of a command are shared, so their log blocks run together. The repeat count must be a number.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Repeat Count | ✓ | Number of times to repeat |

**Example**

```text
BeginLoop("3");
Consolidate("Impacted");
EndLoop();
```

#### EndLoop

> [!NOTE]
> Marks the end of a `BeginLoop` block.

**Input**

None

**Example**

```text
EndLoop();
```

#### AbortOnError

> [!NOTE]
> Turns abort on error on or off from this point in the script. While it's on, the script stops after the first command that fails, and the log ends with `Aborting the script ...`. The `-X1` command-line option turns it on from the start.

> [!WARNING]
> Commands skipped for having the wrong number of parameters don't count as failures. Neither do load and extract commands that report success when HFM failed (see [Load](10-load.md)). JHAT's exit code stays 0 even when it aborts.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Abort | ✓ | `true` / `false` |

**Example**

```text
AbortOnError("true");
```

#### SetNegativeTestingFlag

> [!NOTE]
> Marks the following commands as negative tests (tests expected to fail). While the flag is on, each command's log header ends in `: Negative Testcase`. The command itself isn't marked. It doesn't change whether a command succeeds or fails.

> [!NOTE]
> In the end-of-script summary, a negative-test command that **succeeds** counts as a "negative test failed", and one that fails isn't counted. Abort on error still stops the script when a negative-test command fails.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Flag | ✓ | `true` / `false` |

**Example**

```text
SetNegativeTestingFlag("true");
OpenApplication("Cluster","NoSuchApp");
SetNegativeTestingFlag("false");
```

#### CallOtherProcess

> [!NOTE]
> Runs an external program and waits for it to finish. The command succeeds only if the program exits with code 0. The executable, the parameters and the exit status are written to the log.

> [!WARNING]
> JHAT wraps each parameter in double quotes and joins everything into one command line. Java then splits that line at every space, ignoring the quotes. As a result, a path or parameter containing spaces is split up, with stray quote characters. Use paths without spaces, or call a batch file that does the work.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Executable | ✓ | Program to run |
| Parameters … | | Up to 99 parameters for the program |

**Example**

```text
CallOtherProcess("C:\JHAT\scripts\notify.bat","MonthEnd");
```

### Timers

#### StartTimer

> [!NOTE]
> Starts one of 25 timers. Use `StopTimer` to log the elapsed time.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Timer Number | ✓ | `1`–`25` |
| Description | ✓ | Text used in the `StopTimer` log line. **Must not contain `:`**, or `StopTimer` fails. |

**Example**

```text
StartTimer("3","Load Metadata");
```

#### StopTimer

> [!NOTE]
> Stops a timer and writes the elapsed time to the log, in milliseconds and as hours, minutes and seconds. Fails if the timer wasn't started.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Timer Number | ✓ | `1`–`25` |

**Example**

```text
StopTimer("3");
```

### Files

#### ReplaceLineInTextFile

> [!NOTE]
> Replaces every line of a text file that matches a given line (whole line, ignoring case) with new text. The original is kept as `<file>backup`, and `<file>temp` is used while writing.

> [!CAUTION]
> **This command removes all line breaks from the file**, joining it into a single line. It also fails if a `<file>backup` file is left over from an earlier run.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| File | ✓ | Local text file |
| Match | ✓ | Line to replace, matched against the whole line |
| Replacement | ✓ | New line |

**Example**

```text
ReplaceLineInTextFile("C:\JHAT\settings.txt","Environment = TEST","Environment = PROD");
```

#### CompareFiles

> [!NOTE]
> Compares two files and writes `Files Match.` or `Files are different.` to the log. The command reports success either way, so check the log line.

- **Text comparison:** line by line, ignoring case and leading/trailing spaces. `TEXT` and `TEXTIGNOREWS` behave the same.
- **Diff file:** up to 1,000 differing lines are written to it, but **only if the file doesn't already exist**. If it exists, nothing is written.
- **Binary comparison:** byte by byte. The diff file isn't used.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | File 1 | |
| 2 | File 2 | |
| 3 | Mode | Optional. `TEXT` (default), `TEXTIGNOREWS` or `BINARY`. Anything else makes the command fail. |
| 4 | Diff File | Optional. Local file for the differences. |
| 5 | Ignore Rules | Optional. Lines to skip. See [Ignore rules](#ignore-rules). |

**Example**

```text
CompareFiles("C:\Output\grid.txt","C:\Baseline\grid.txt","TEXT","C:\Output\grid_diff.txt");
```

#### CompareFilesContentNotOrdered

> [!NOTE]
> Writes to the log every line of File 1 that doesn't appear anywhere in File 2 (ignoring case and line order). Lines only in File 2 aren't reported. The command always reports success.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| File 1 | ✓ | |
| File 2 | ✓ | |
| Diff File | | Accepted but ignored |

**Example**

```text
CompareFilesContentNotOrdered("C:\Output\members.txt","C:\Baseline\members.txt");
```

#### CompareMultipleFiles

> [!NOTE]
> Compares each file matching a wildcard pattern with the file of the same name in another folder, as for `CompareFiles`. Missing counterparts and mismatches are written to the log, ending with `All files are the same.` or a list of the files that differ. The command reports success either way. It fails if no files match the pattern or a folder can't be read.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | File Pattern | Folder and wildcard pattern, e.g. `C:\Output\*.txt` |
| 2 | Compare Folder | Folder holding the files to compare against |
| 3 | Mode | Optional. As for `CompareFiles`. |
| 4 | Ignore Rules | Optional. As for `CompareFiles`. |
| 5 | Diff Folder | Optional. Created if needed. Diff files are named `<file>_diff.txt`. |

**Example**

```text
CompareMultipleFiles("C:\Output\*.txt","C:\Baseline","TEXT","","C:\Output\diffs");
```

## Ignore rules

`CompareFiles` and `CompareMultipleFiles` can skip lines that match ignore rules. Lines are checked in each file separately, so a matching line is skipped in one file without skipping a line in the other.

A rule is `beginswith=<text>` or `contains=<text>`. Rules can be joined with ` AND ` or ` OR ` (upper case, one space each side). For example:

```text
CompareFiles("C:\Output\data.txt","C:\Baseline\data.txt","TEXT","","beginswith=!");
```

- The function name (`beginswith`, `contains`) is matched ignoring case. The text is matched **case-sensitively** against the untrimmed line.
- The text can't contain spaces or `=`.
- An invalid rule makes the command fail.

> [!WARNING]
> **Only the last rule counts.** Because of a bug in how rules are combined, `contains=A OR contains=B` skips only lines containing `B`. Use a single rule.

> [!WARNING]
> If ignore rules are given and one file has more lines than the other, the command fails when it reaches the end of the shorter file.
