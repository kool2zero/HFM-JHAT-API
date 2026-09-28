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
