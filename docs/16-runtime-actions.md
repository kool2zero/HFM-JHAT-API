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

<p class="callout info">Pauses the script.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Interval | ✓ | Time to wait, in **milliseconds** |

**Example**

```dart
Delay("5000");
```

#### BeginLoop

<p class="callout info">Repeats the commands between <code>BeginLoop</code> and the next <code>EndLoop</code> the given number of times in total. JHAT expands the loop before the script starts, by copying the commands.</p>

<p class="callout warning">Don't nest loops. JHAT's nesting check never triggers, so a nested loop doesn't repeat as you'd expect. Log entries of the repeated copies of a command are shared, so their log blocks run together. The repeat count must be a number.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Repeat Count | ✓ | Number of times to repeat |

**Example**

```dart
BeginLoop("3");
Consolidate("Impacted");
EndLoop();
```

#### EndLoop

<p class="callout info">Marks the end of a <code>BeginLoop</code> block.</p>

**Input**

None

**Example**

```dart
EndLoop();
```

#### AbortOnError

<p class="callout info">Turns abort on error on or off from this point in the script. While it's on, the script stops after the first command that fails, and the log ends with <code>Aborting the script ...</code>. The <code>-X1</code> command-line option turns it on from the start.</p>

<p class="callout warning">Commands skipped for having the wrong number of parameters don't count as failures. Neither do load and extract commands that report success when HFM failed (see <a href="10-load.md">Load</a>). JHAT's exit code stays 0 even when it aborts.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Abort | ✓ | `true` / `false` |

**Example**

```dart
AbortOnError("true");
```

#### SetNegativeTestingFlag

<p class="callout info">Marks the following commands as negative tests (tests expected to fail). While the flag is on, each command's log header ends in <code>: Negative Testcase</code>. The command itself isn't marked. It doesn't change whether a command succeeds or fails.</p>

<p class="callout info">In the end-of-script summary, a negative-test command that <b>succeeds</b> counts as a "negative test failed", and one that fails isn't counted. Abort on error still stops the script when a negative-test command fails.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Flag | ✓ | `true` / `false` |

**Example**

```dart
SetNegativeTestingFlag("true");
OpenApplication("Cluster","NoSuchApp");
SetNegativeTestingFlag("false");
```

#### CallOtherProcess

<p class="callout info">Runs an external program and waits for it to finish. The command succeeds only if the program exits with code 0. The executable, the parameters and the exit status are written to the log.</p>

<p class="callout warning">JHAT wraps each parameter in double quotes and joins everything into one command line. Java then splits that line at every space, ignoring the quotes. As a result, a path or parameter containing spaces is split up, with stray quote characters. Use paths without spaces, or call a batch file that does the work.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Executable | ✓ | Program to run |
| Parameters … | | Up to 99 parameters for the program |

**Example**

```dart
CallOtherProcess("C:\JHAT\scripts\notify.bat","MonthEnd");
```

### Timers

#### StartTimer

<p class="callout info">Starts one of 25 timers. Use <code>StopTimer</code> to log the elapsed time.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Timer Number | ✓ | `1`–`25` |
| Description | ✓ | Text used in the `StopTimer` log line. **Must not contain `:`**, or `StopTimer` fails. |

**Example**

```dart
StartTimer("3","Load Metadata");
```

#### StopTimer

<p class="callout info">Stops a timer and writes the elapsed time to the log, in milliseconds and as hours, minutes and seconds. Fails if the timer wasn't started.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Timer Number | ✓ | `1`–`25` |

**Example**

```dart
StopTimer("3");
```

### Files

#### ReplaceLineInTextFile

<p class="callout info">Replaces every line of a text file that matches a given line (whole line, ignoring case) with new text. The original is kept as <code>&lt;file&gt;backup</code>, and <code>&lt;file&gt;temp</code> is used while writing.</p>

<p class="callout danger"><b>This command removes all line breaks from the file</b>, joining it into a single line. It also fails if a <code>&lt;file&gt;backup</code> file is left over from an earlier run.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| File | ✓ | Local text file |
| Match | ✓ | Line to replace, matched against the whole line |
| Replacement | ✓ | New line |

**Example**

```dart
ReplaceLineInTextFile("C:\JHAT\settings.txt","Environment = TEST","Environment = PROD");
```

#### CompareFiles

<p class="callout info">Compares two files and writes <code>Files Match.</code> or <code>Files are different.</code> to the log. The command reports success either way, so check the log line.</p>

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

```dart
CompareFiles("C:\Output\grid.txt","C:\Baseline\grid.txt","TEXT","C:\Output\grid_diff.txt");
```

#### CompareFilesContentNotOrdered

<p class="callout info">Writes to the log every line of File 1 that doesn't appear anywhere in File 2 (ignoring case and line order). Lines only in File 2 aren't reported. The command always reports success.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| File 1 | ✓ | |
| File 2 | ✓ | |
| Diff File | | Accepted but ignored |

**Example**

```dart
CompareFilesContentNotOrdered("C:\Output\members.txt","C:\Baseline\members.txt");
```

#### CompareMultipleFiles

<p class="callout info">Compares each file matching a wildcard pattern with the file of the same name in another folder, as for <code>CompareFiles</code>. Missing counterparts and mismatches are written to the log, ending with <code>All files are the same.</code> or a list of the files that differ. The command reports success either way. It fails if no files match the pattern or a folder can't be read.</p>

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | File Pattern | Folder and wildcard pattern, e.g. `C:\Output\*.txt` |
| 2 | Compare Folder | Folder holding the files to compare against |
| 3 | Mode | Optional. As for `CompareFiles`. |
| 4 | Ignore Rules | Optional. As for `CompareFiles`. |
| 5 | Diff Folder | Optional. Created if needed. Diff files are named `<file>_diff.txt`. |

**Example**

```dart
CompareMultipleFiles("C:\Output\*.txt","C:\Baseline","TEXT","","C:\Output\diffs");
```

## Ignore rules

`CompareFiles` and `CompareMultipleFiles` can skip lines that match ignore rules. Lines are checked in each file separately, so a matching line is skipped in one file without skipping a line in the other.

A rule is `beginswith=<text>` or `contains=<text>`. Rules can be joined with ` AND ` or ` OR ` (upper case, one space each side). For example:

```dart
CompareFiles("C:\Output\data.txt","C:\Baseline\data.txt","TEXT","","beginswith=!");
```

- The function name (`beginswith`, `contains`) is matched ignoring case. The text is matched **case-sensitively** against the untrimmed line.
- The text can't contain spaces or `=`.
- An invalid rule makes the command fail.

<p class="callout warning"><b>Only the last rule counts.</b> Because of a bug in how rules are combined, <code>contains=A OR contains=B</code> skips only lines containing <code>B</code>. Use a single rule.</p>

<p class="callout warning">If ignore rules are given and one file has more lines than the other, the command fails when it reaches the end of the shorter file.</p>
