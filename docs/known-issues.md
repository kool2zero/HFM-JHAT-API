# JHAT Known Issues

[← Back to index](../README.md)

Read this before you write a script. These are the JHAT behaviours most likely to hide a failure or produce wrong results. Each entry links to the full description.

## Detecting failures

> [!CAUTION]
> A script can fail without anything outside the log showing it. Check the log's summary, not the exit code or a single command's status.

- **The exit code is always 0 once the script starts**, even if commands failed or the script was aborted. See [How a script runs](00-automation-with-jhat.md#how-a-script-runs).
- **Most load and extract commands report success when HFM reports failure.** JHAT logs "Load … failed" or "Extract … failed" and then marks the command successful. Only `LoadData`, `StartLoadData`, `LoadPhaseInfo`, `LoadICTransactions`, `ExtractData`, `EAExtract`, `ExtractPhaseInfo` and `ExtractDataExtDim` report failure correctly. See [Load](10-load.md#overview) and [Extracts](07-extracts.md#overview).
- **Syntax errors are only detailed on the console.** A command with a syntax error (including the wrong number of parameters) is skipped. The log's summary counts syntax errors, but which lines failed and why is only printed to the console. See [How a script runs](00-automation-with-jhat.md#how-a-script-runs).
- **Commands skipped for the wrong number of parameters don't count as failures**, so `AbortOnError` doesn't stop on them. See [AbortOnError](16-runtime-actions.md#abortonerror).
- **These commands also always report success:**
  - [DeleteApplication](02-application.md#deleteapplication), even if the application doesn't exist
  - [LoadModuleConfiguration](10-load.md#loadmoduleconfiguration)
  - [ProcessFlowGetHistory](14-process-management.md#processflowgethistory), even if the history can't be written
  - [DeleteTaskFromTaskList](05-documents.md#deletetaskfromtasklist), even if the document isn't in the task list
  - [AddItemToList](07-extracts.md#additemtolist), even for an unsupported dimension, when it adds nothing
  - [CompareFilesContentNotOrdered](16-runtime-actions.md#comparefilescontentnotordered), even if the files differ

## Parameters

- **Every argument must be in straight double quotes.** Unquoted values are dropped, and typographic quotes (“ ”) aren't recognized. See [Script syntax](00-automation-with-jhat.md#script-syntax).
- **Command-line options take their value with no space:** `-I"E:\JHAT\script.txt"`, not `-I "E:\JHAT\script.txt"`. JHAT's own help shows `-I` and `-O` the wrong way round. See [Running a script](00-automation-with-jhat.md#running-a-script).
- **Parameter-count ranges are never enforced.** For commands that accept a range of parameter counts, any number is accepted, and too few can make the command crash. See [Parameter checking](00-automation-with-jhat.md#parameter-checking).
- **JHAT's built-in usage text is wrong for several commands.** Follow these pages, not the usage text:

  | Command | Usage text | Actually needs |
  | --- | --- | --- |
  | [GetForm](03-data-form.md#getform) | 12 parameters | 4–10 |
  | [ShutdownApplication](02-application.md#shutdownapplication) | Application name | No parameters |
  | [ExtractSecurity](07-extracts.md#extractsecurity) | 2 parameters | 3 |
  | [FilterJournals](09-journals.md#filterjournals) | 13 parameters | 14 |
  | [LoadSecurity](10-load.md#loadsecurity) | 9 parameters | Exactly 5 |
  | [SetSubmissionGroup](14-process-management.md#setsubmissiongroup) | 3 parameters | 4 |
  | [GenerateReport](15-journal-reports.md#generatereport) | 5 or 6 parameters | 6 |

- **Some parameters are required but ignored.** These include the first two parameters of [Logon](02-application.md#logon), parameter 2 of the `ProcessFlow…` commands ([Process Management](14-process-management.md)), and the key of [AddRegKey](09-journals.md#addregkey) and [DeleteRegKey](09-journals.md#deleteregkey).

## Commands that don't work

| Command | Problem |
| --- | --- |
| [GenerateRecurringJournal](09-journals.md#generaterecurringjournal) | Does nothing. Use `GenerateRecurring`. |
| [LockICEntity](04-data-grid.md#lockicentity), [UnlockICEntity](04-data-grid.md#unlockicentity) | Two commands share each name: the [Data Grid](04-data-grid.md) versions do nothing and the [Intercompany](08-intercompany.md#lockicentity) versions work. Which one runs depends on the order JHAT loads its handlers. |
| [GetCellStatus](04-data-grid.md#getcellstatus) | Leftover test code. Reads a hardcoded POV 20,000 times and writes nothing. |
| [EAExtract](07-extracts.md#eaextract) | Not an Extended Analytics extract. It's a copy of `ExtractData`. |

## Wrong or unexpected results

| Command | Problem |
| --- | --- |
| [GetCellInfo](04-data-grid.md#getcellinfo) | Cell security `Read only` and `None` are swapped. See [Status text](04-data-grid.md#status-text). |
| [FilterICTransactions](08-intercompany.md#filterictransactions) | Date filters read the month as minutes. Display Partner Transactions overwrites Display Entity Transactions. |
| [CreateAutoMatchByIDTemplate](08-intercompany.md#createautomatchbyidtemplate) | The partner (ICP) filter gets an `E#` prefix instead of `I#`. |
| [EditICTransaction](08-intercompany.md#editictransaction) | Only one custom dimension per call. Amount and currency overwrite each other. |
| [ClearData](13-miscellaneous-actions.md#cleardata) | Clear Rates and System Data only works when Detailed Logging is also `true`. |
| [CalculateOwnership](13-miscellaneous-actions.md#calculateownership) | Mode `Descendants` must be spelled `Decendants`. The correct spelling falls back to all entities. |
| [ProcessFlowGetHistory](14-process-management.md#processflowgethistory) | The third parameter overwrites the second, so user IDs are never suppressed. |
| [SetPOV](02-application.md#setpov--setpovname) | Only works with exactly 4 custom dimensions. Use `SetPOVExtDim` otherwise. |
| [ExtractMetaData](07-extracts.md#extractmetadata) | Fails if you pass custom dimension parameters and the application has fewer than 4 custom dimensions. |
| [LoadMetaDataExtDim](10-load.md#loadmetadataextdim) | If you name only some custom dimensions, settings can shift onto the wrong dimensions. Name all of them. |
| [LoadData](10-load.md#loaddata) | An unrecognized Mode is only logged. The load still runs with HFM's default handling. |
| [ModifyApplication](02-application.md#modifyapplication) | Can only disable modules, never re-enable them. |
| [DefineMacroEx](11-macros.md#definemacroex) | Replaces only one macro in each part. |
| [BeginLoop](16-runtime-actions.md#beginloop) | Nested loops don't repeat as expected. |
| [CompareFiles](16-runtime-actions.md#ignore-rules) | Only the last ignore rule counts, and ignore rules fail on files of different lengths. |
| [ReplaceLineInTextFile](16-runtime-actions.md#replacelineintextfile) | Removes every line break from the file. |
| [CallOtherProcess](16-runtime-actions.md#callotherprocess) | Splits the command line at every space, including inside quoted paths. |

## Side effects

- **[UpdateParameter](13-miscellaneous-actions.md#updateparameter) prints the HFM database password to the console.** Don't capture JHAT's console output where others can read it.
- **[GetForm](03-data-form.md#getform)** with "Use script POV" set to `true` permanently saves the script's POV into the stored form.
- **[exit](13-miscellaneous-actions.md#exit)** stops JHAT without closing the application or logging out.
