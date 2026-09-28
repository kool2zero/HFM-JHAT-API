# Automation with JHAT

[← Back to index](../README.md)

#### Overview

> Adapted from: [https://neonn.com/alwayson/using-jhat-automate-hfm-tasks/](https://neonn.com/alwayson/using-jhat-automate-hfm-tasks/)

The `JHAT` tool is another way to automatize tasks using a batch file and the HFM API. `JHAT` offers the opportunity to use any scheduler to launch HFM tasks and provide a better flexibility than Task Flows.

#### How does it work?

`JHAT` utility is present in the path hereunder:

`E:\Oracle\Middleware\EPMSystem11R1\products\FinancialManagement\Server\jhat.bat`

The batch file embeds all libraries, paths and other references to execute HFM tasks.

Before the first run, it’ mandatory to create `setenv.cmd` file and set the parameter `EPM_ORACLE_INSTANCE_FOR_JHAT` to point to the EPM instance:

<img src="https://raw.githubusercontent.com/kool2zero/HFM-JHAT-API/main/img/a2Rimage.png?sanitize=true&raw=true" />

#### JHAT usage

A text file provides the tasks to be executed against HFM. Basically, the structure of the file is as below:

```dart
Logon()
OpenApplication()
SetPOV()
Consolidate() '(or other HFM function)'
CloseApplication()
Logout()
```

**Example:**

<img src="https://raw.githubusercontent.com/kool2zero/HFM-JHAT-API/main/img/azXimage.png?sanitize=true&raw=true" />

<p class="callout info">In most cases, you will need to call the `Logon`, `OpenApplication`, `CloseApplication` and `Logout` commands as part of the script execution.</p>

<p class="callout info">Certain commands will necessitate running the `SetPOV` command.</p>

<p class="callout warning">The JHAT API is not fully documented by Oracle. Commands used are based on examples from others.</p>

You only have to provide the file previously create as argument and call the utility to run the task:

```shell
jhat.bat -I E:\JHAT\test.txt
```

Use `jhat.bat -H` command to explore the available options:

<img src="https://raw.githubusercontent.com/kool2zero/HFM-JHAT-API/main/img/qIJimage.png?sanitize=true&raw=true" />

<p class="callout info">This utility can be used to launch consolidations, data load, data extraction, etc...</p>

#### Parameter checking

Before a command runs, JHAT checks how many parameters it was given:

- Most commands need exactly the number of parameters shown on their page.
- A few accept several counts (for example, `CreateApplicationCAS` accepts 7 or 8).

If the count is wrong, the command fails with "Incorrect number of parameters." The log shows the script line number, the parameters you passed, and the command's expected usage.

<p class="callout warning">For commands whose parameter count is a range, JHAT's check never fails. This covers <code>GetForm</code>, <code>FilterProcessControlGrid</code>, <code>GetCalcStatusSummary</code>, <code>ExtractMetaData</code>, <code>ExtractMetaDataExtDim</code> and <code>ExtractSecurityExpanded</code>. Passing too few parameters makes the command crash partway through instead of failing with a clear message.</p>

#### Log output

Each command writes a block to the log:

```
**********OpenApplication : Successful**********
Start execution of action(script line 2) at <timestamp>
Successful
End execution at <timestamp>
```

- When a command fails, the header reads `Failed` and is followed by `Line No: <n>`.
- `Comment`, `LoadMacros` and `SubstituteMacro` are not logged.
- While `SetNegativeTestingFlag` is on, each header is marked `: Negative Testcase`.

#### Long-running tasks

JHAT polls HFM until a task such as a consolidation, load or extract finishes:

| Setting | Value |
| --- | --- |
| Poll interval | 2000 ms by default. Override with the `ASYNC_TASK_POLL_MILLI_SECONDS` environment variable (e.g. in `setenv.cmd`). |
| Task start timeout | JHAT stops monitoring if no running task appears within 30 seconds. |
| Overall timeout | JHAT stops waiting after 60 minutes. |

When the task finishes, its log file is downloaded from the server. For data extracts, the data file is downloaded too.
