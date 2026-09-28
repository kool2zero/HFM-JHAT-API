# JHAT Examples

[← Back to index](../README.md)

A complete month-end job: load actuals, consolidate, and extract the result, run from a scheduler.

| File | Purpose |
| --- | --- |
| [run-month-end.bat](run-month-end.bat) | Runs the script and exits with 1 if anything failed. Point your scheduler at this file. |
| [month-end-close.txt](month-end-close.txt) | The JHAT script |
| [month-end-macros.txt](month-end-macros.txt) | Settings that change between environments or periods: cluster, application, POV and folders |
| [credentials.txt](credentials.txt) | Template for the logon user name and password |

## Setup

1. Copy `run-month-end.bat`, `month-end-close.txt` and `month-end-macros.txt` to one folder on the HFM server, for example `D:\JHAT\MonthEnd`.
2. Copy `credentials.txt` to a separate folder that only the account running JHAT can read, and fill in the user name and password.
3. Edit the paths at the top of `run-month-end.bat` and the values in `month-end-macros.txt`.

## How it works

- **Macros keep the script generic.** `month-end-close.txt` uses names like `__APP__` and `__PERIOD__`, which are defined in `month-end-macros.txt`. To run another period or environment, change the macro file, not the script. See [Macros](../docs/11-macros.md).
- **Credentials stay out of the script folder.** The batch file loads `credentials.txt` with the `-M` option before the script runs, so the script only refers to `__USER__` and `__PASSWORD__`.
- **`__@SCRIPTDIR__`** is the folder containing the script, so the script finds its macro file and writes its logs to a `Logs` folder next to it wherever it's copied.
- **`-X1`** stops the script at the first failed command, so a failed load isn't followed by a consolidation.
- **`-W120`** lets the consolidation run for up to 2 hours before JHAT stops waiting (the default is 60 minutes).
- **Failures are detected from the log.** JHAT's exit code is 0 even when commands fail, so the batch file checks the summary at the end of the log for `0 execution error(s)`, `0 syntax error(s)` and `Invalid functions: 0`. See [Known issues](../docs/known-issues.md#detecting-failures).
- **Only commands that report failure correctly are used** for the steps that matter: `LoadData` and `ExtractData` wait for their task and fail if it fails. Most other load and extract commands report success regardless.

## Adapting it

- **Different number of custom dimensions:** the script uses `SetPOVExtDim`, which works with any number. `SetPOV` only works with exactly 4.
- **Full consolidation:** change `Consolidate("Impacted")` to `Consolidate("AllWithData")`.
- **Several periods:** add more `AddItemToList("1", "Period", "...")` lines before `ExtractData`.
- **Timers:** `StartTimer` and `StopTimer` write each step's elapsed time to the log. Remove them if you don't need them.
