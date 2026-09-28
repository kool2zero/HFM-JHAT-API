# JHAT Commands: Runtime Actions

[← Back to index](../README.md)

#### Overview

These JHAT Commands are related to Runtime actions

#### Commands

These commands don't need an open application.

##### Script control

<details id="bkmrk-Delay-"><summary>Delay</summary>

<p class="callout info">Pauses the script.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Interval | ✓ | Time to wait, in **milliseconds** |

**Example**

```dart
Delay("5000");
```

</details><details id="bkmrk-BeginLoop-"><summary>BeginLoop</summary>

<p class="callout info">Marks the start of a block to repeat. The command itself only logs success. Any repeating is done by JHAT's script runner, which wasn't part of the source reviewed, so this behavior isn't confirmed.</p>

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

</details><details id="bkmrk-EndLoop-"><summary>EndLoop</summary>

<p class="callout info">Marks the end of a <code>BeginLoop</code> block. As for <code>BeginLoop</code>, the command itself does nothing.</p>

**Input**

None

**Example**

```dart
EndLoop();
```

</details><details id="bkmrk-AbortOnError-"><summary>AbortOnError</summary>

<p class="callout info">Sets whether the script should stop at the first failed command. The command only stores the setting. Stopping is done by JHAT's script runner, which wasn't part of the source reviewed.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Abort | ✓ | `true` / `false` |

**Example**

```dart
AbortOnError("true");
```

</details><details id="bkmrk-SetNegativeTestingFlag-"><summary>SetNegativeTestingFlag</summary>

<p class="callout info">Marks the following commands as negative tests (tests expected to fail). While the flag is on, each command's log header ends in <code>: Negative Testcase</code>. The command itself isn't marked. It doesn't change whether a command succeeds or fails.</p>

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

</details><details id="bkmrk-CallOtherProcess-"><summary>CallOtherProcess</summary>

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

</details>

##### Timers

<details id="bkmrk-StartTimer-"><summary>StartTimer</summary>

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

</details><details id="bkmrk-StopTimer-"><summary>StopTimer</summary>

<p class="callout info">Stops a timer and writes the elapsed time to the log, in milliseconds and as hours, minutes and seconds. Fails if the timer wasn't started.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Timer Number | ✓ | `1`–`25` |

**Example**

```dart
StopTimer("3");
```

</details>

##### Files

<details id="bkmrk-ReplaceLineInTextFile-"><summary>ReplaceLineInTextFile</summary>

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

</details><details id="bkmrk-CompareFiles-"><summary>CompareFiles</summary>

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
| 5 | Ignore Rules | Optional. Rules for lines to skip, as space-separated words (an odd number of words). The rule syntax is defined in a class that wasn't part of the source reviewed. |

**Example**

```dart
CompareFiles("C:\Output\grid.txt","C:\Baseline\grid.txt","TEXT","C:\Output\grid_diff.txt");
```

</details><details id="bkmrk-CompareFilesContentNotOrdered-"><summary>CompareFilesContentNotOrdered</summary>

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

</details><details id="bkmrk-CompareMultipleFiles-"><summary>CompareMultipleFiles</summary>

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

</details>
