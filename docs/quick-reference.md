# JHAT Commands: Quick Reference

[← Back to index](../README.md)

All JHAT commands in alphabetical order. Command names are not case-sensitive.

**Params** is the number of parameters JHAT accepts: a single number, a range, or a list of allowed counts. Ranges are not enforced (see [Parameter checking](00-automation-with-jhat.md#parameter-checking)), so check each command's page for what it actually reads.

| Command | Params | Page | Purpose |
| --- | :---: | --- | --- |
| [AbortOnError](16-runtime-actions.md#abortonerror) | 1 | Runtime Actions | Turns abort on error on or off from this point in the script. |
| [AddICTransactionToList](08-intercompany.md#addictransactiontolist) | 3 | Intercompany | Adds a transaction to the in-memory list used by `ProcessICTransaction`. |
| [AddItemsToListFromMemberlist](07-extracts.md#additemstolistfrommemberlist) | 4 | Extracts | Adds the members of an HFM member list to a list. |
| [AddItemToList](07-extracts.md#additemtolist) | 3 | Extracts | Adds one item to a list. |
| [AddLineItemToJournal](09-journals.md#addlineitemtojournal) | 5 | Journals | Adds an entry to an existing journal and saves the journal. |
| [AddLineToTemplate](09-journals.md#addlinetotemplate) | 5 | Journals | Adds an entry to an existing template and saves the template. |
| [AddRegKey](09-journals.md#addregkey) | 1 | Journals | Sets HFM's cached journal-ordering system parameter. |
| [AddTaskToTaskList](05-documents.md#addtasktotasklist) | 7 | Documents | Adds an existing document to the end of a task list and saves the task list. |
| [Allocate](04-data-grid.md#allocate) | 0 | Data Grid | Runs the [Allocate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s07.html) command on the current POV. |
| [ApproveJournal](09-journals.md#approvejournal) | 4 | Journals | Approves a journal. |
| [AttachCellDocument](04-data-grid.md#attachcelldocumentenhanced--attachcelldocument) | 2 | Data Grid | Attaches a document that is already in Document Manager to the cell at the current POV. |
| [AttachCellDocumentEnhanced](04-data-grid.md#attachcelldocumentenhanced--attachcelldocument) | 3 | Data Grid | Attaches a document that is already in Document Manager to the cell at the current POV. |
| [BeginLoop](16-runtime-actions.md#beginloop) | 1 | Runtime Actions | Repeats the commands between `BeginLoop` and the next `EndLoop` the given number of times in total. |
| [CalcEPU](06-epu.md#calcepu) | 1 | EPU | Runs the equity pickup calculation for the Scenario, Year and Period set by `SetPOV`, and waits for the task to finish. |
| [CalculateOwnership](13-miscellaneous-actions.md#calculateownership) | 10 | Miscellaneous Actions | Calculates ownership from the shares data entered in Manage Ownership, like HFM's Calculate Ownership command. |
| [CallOtherProcess](16-runtime-actions.md#callotherprocess) | 1–100 | Runtime Actions | Runs an external program and waits for it to finish. |
| [ChartLogic](04-data-grid.md#chartlogic) | 1 | Data Grid | Runs the [Calculate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s04.html) command on the current POV. |
| [ClearData](13-miscellaneous-actions.md#cleardata) | 9 | Miscellaneous Actions | Clears data for a scenario and year, and copies the server's log to a local file. |
| [ClearList](07-extracts.md#clearlist) | 2 | Extracts | Empties one list. |
| [CloseApplication](02-application.md#closeapplication) | 0 | Application | Closes the session opened by `OpenApplication`, removes any data grid the script created, and clears the cached dimensions. |
| [CloseICPeriod](08-intercompany.md#closeicperiod) | 3 | Intercompany | Closes an intercompany period. |
| [ClosePeriod](09-journals.md#closeperiod) | 3 | Journals | Closes a period for journals. |
| [Comment](11-macros.md#comment) | 1 | Macros | Writes the text to the log and does nothing else. |
| [CompareFiles](16-runtime-actions.md#comparefiles) | 2–5 | Runtime Actions | Compares two files and writes `Files Match.` or `Files are different.` to the log. |
| [CompareFilesContentNotOrdered](16-runtime-actions.md#comparefilescontentnotordered) | 2–3 | Runtime Actions | Writes to the log every line of File 1 that doesn't appear anywhere in File 2 (ignoring case and line order). |
| [CompareMultipleFiles](16-runtime-actions.md#comparemultiplefiles) | 2–5 | Runtime Actions | Compares each file matching a wildcard pattern with the file of the same name in another folder, as for `CompareFiles`. |
| [Consolidate](04-data-grid.md#consolidate) | 1 or 2 | Data Grid | Runs the [Consolidate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s07.html) command on the current POV, and optionally on extra POVs from a string list. |
| [CopyApplication](02-application.md#copyapplication) | 7 | Application | Copies one application to a new application. |
| [CopyData](13-miscellaneous-actions.md#copydata) | 17 | Miscellaneous Actions | Copies data from one scenario and year to another, for example to seed a forecast from actuals. |
| [CreateApplicationCAS](02-application.md#createapplicationextdim--createapplicationcas) | 7 or 8 | Application | Creates an Application on the Server. |
| [CreateApplicationExtDim](02-application.md#createapplicationextdim--createapplicationcas) | 8 | Application | Creates an Application on the Server. |
| [CreateAutoMatchByAccountTemplate](08-intercompany.md#createautomatchbyaccounttemplate) | 12 | Intercompany | Saves an Auto Match by Account template to Document Manager. |
| [CreateAutoMatchByIDTemplate](08-intercompany.md#createautomatchbyidtemplate) | 12 | Intercompany | Saves an Auto Match by ID template to Document Manager. |
| [CreateICTransaction](08-intercompany.md#createictransaction) | 12 | Intercompany | Creates an intercompany transaction. |
| [CreateJournal](09-journals.md#createjournal) | 8 | Journals | Creates an empty journal with status Working. |
| [CreateJournalFromTemplate](09-journals.md#createjournalfromtemplate) | 8 | Journals | Creates a Working journal from a template, for the Scenario, Year, Period and Value in the POV. |
| [CreateJournalGroup](09-journals.md#createjournalgroup) | 2 | Journals | Creates a journal group. |
| [CreateReasonCode](08-intercompany.md#createreasoncode) | 2 | Intercompany | Creates an intercompany reason code. |
| [CreateTaskList](05-documents.md#createtasklist) | 6 | Documents | Creates an empty task list owned by the logged-on user. |
| [CreateTemplate](09-journals.md#createtemplate) | 8 | Journals | Creates an empty journal template. |
| [DefineDataRetrieval](04-data-grid.md#definegridextdim--definedataretrieval) | 2 | Data Grid | Defines a data grid that can have several row and column dimensions. |
| [DefineGrid](04-data-grid.md#definegrid) | 6 | Data Grid | Defines a data grid with one row dimension and one column dimension. |
| [DefineGridExtDim](04-data-grid.md#definegridextdim--definedataretrieval) | 2 | Data Grid | Defines a data grid that can have several row and column dimensions. |
| [DefineMacro](11-macros.md#definemacro) | 2 | Macros | Defines a macro, or replaces the value of an existing one. |
| [DefineMacroEx](11-macros.md#definemacroex) | 2–99 | Macros | Defines a macro whose value is the parameters after the name, joined together with nothing between them. |
| [Delay](16-runtime-actions.md#delay) | 1 | Runtime Actions | Pauses the script. |
| [DeleteAllApplications](02-application.md#deleteallapplications) | 1 | Application | Deletes every application on the given cluster or server, logging each one as it is deleted. |
| [DeleteAllJournalGroups](09-journals.md#deletealljournalgroups) | 0 | Journals | Deletes every journal group. |
| [DeleteAllReasonCodes](08-intercompany.md#deleteallreasoncodes) | 0 | Intercompany | Deletes every intercompany reason code. |
| [DeleteApplication](02-application.md#deleteapplication) | 2 | Application | Permanently deletes an application, including all its data, from a cluster or server. |
| [deleteCellTextEnhanced](04-data-grid.md#deletecelltextenhanced) | 2 | Data Grid | Deletes the text, the attachments, or both, for a cell text label on the cell at the current POV. |
| [DeleteDocument](05-documents.md#deletedocument) | 4 | Documents | Deletes a document from Document Manager. |
| [DeleteFilteredDataAuditRecords](01-administration.md#deletefiltereddataauditrecords) | 2 | Administration | Deletes the data audit records that match the user and POV filter. |
| [DeleteFilteredTaskAuditRecords](01-administration.md#deletefilteredtaskauditrecords) | 2 | Administration | Deletes the task audit records that match the user and task filter. |
| [DeleteInvalidRecords](13-miscellaneous-actions.md#deleteinvalidrecords) | 2 | Miscellaneous Actions | Runs HFM's Delete Invalid Records task, which removes data stored at intersections that are no longer valid, typically after metadata changes. |
| [DeleteJournal](09-journals.md#deletejournal) | 4 | Journals | Deletes a journal. |
| [DeleteJournalGroup](09-journals.md#deletejournalgroup) | 1 | Journals | Deletes a journal group. |
| [DeleteReasonCode](08-intercompany.md#deletereasoncode) | 1 | Intercompany | Deletes an intercompany reason code. |
| [DeleteRegKey](09-journals.md#deleteregkey) | 1 | Journals | Deletes HFM's cached journal-ordering system parameter. |
| [DeleteTaskFromTaskList](05-documents.md#deletetaskfromtasklist) | 7 | Documents | Removes a document from a task list and saves the task list. |
| [DeleteTemplate](09-journals.md#deletetemplate) | 1 | Journals | Deletes a journal template. |
| [DetachCellDocument](04-data-grid.md#detachcelldocument) | 2 | Data Grid | Removes one attached document from a cell text label on the cell at the current POV. |
| [DisableEnableModule](12-configuration.md#disableenablemodule) | 2 | Configuration | Enables or disables one module of the open application. |
| [DisplayICTransactions](08-intercompany.md#displayictransactions) | 8 | Intercompany | Writes every intercompany transaction for a scenario, year and period to a file (same format as `GetICTransactions`), with display options. |
| [DisplayProcessControlGrid](04-data-grid.md#displayprocesscontrolgrid) | 12 | Data Grid | Writes the process control grid to a file, with display options that match the Process Control page. |
| [EAExtract](07-extracts.md#eaextract) | 17 | Extracts | **Not an Extended Analytics extract.** JHAT's usage text describes a 17-parameter extract to a database table (DSN, table prefix, …), but the command's code is a copy of `ExtractData`. |
| [EditICTransaction](08-intercompany.md#editictransaction) | 5 | Intercompany | Changes fields on the intercompany transactions that match a POV, transaction ID and sub ID. |
| [EndLoop](16-runtime-actions.md#endloop) | 0 | Runtime Actions | Marks the end of a `BeginLoop` block. |
| [EnumDocuments](05-documents.md#enumdocuments) | 5 | Documents | Lists the documents in a Document Manager folder and writes them to a UTF-8 file, one `name;description` line per document. |
| [EnumTasksUnderTaskList](05-documents.md#enumtasksundertasklist) | 3 | Documents | Reads a task list and writes its XML definition, including the documents it contains, to a UTF-8 file. |
| [ExecuteOnDemandRule](03-data-form.md#executeondemandrule) | 1 | Data Form | Runs an On Demand Rule against the POV set by `SetPOV`. |
| [exit](13-miscellaneous-actions.md#exit) | 0 | Miscellaneous Actions | Stops JHAT immediately with exit code 0. |
| [ExtractData](07-extracts.md#extractdata) | 10 | Extracts | Extracts data for a scenario and year to a flat file (no header), and waits for the extract to finish. |
| [ExtractDataExtDim](07-extracts.md#extractdataextdim) | 12 | Extracts | Extracts data for any POV (member lists allowed), with full control over what is included, and waits for the extract to finish. |
| [ExtractDocument](07-extracts.md#extractdocument) | 5 | Extracts | Saves a document from Document Manager to a local file, encoded as UTF-16LE. |
| [ExtractICTransactions](07-extracts.md#extractictransactions) | 14 | Extracts | Extracts intercompany transactions for a scenario, year and period. |
| [ExtractJournal](07-extracts.md#extractjournal) | 9 | Extracts | Extracts journals for a scenario, year and optionally one period. |
| [ExtractJournalPlus](07-extracts.md#extractjournalplus) | 24 | Extracts | Extracts journals with full control over periods, entities, values, labels, groups, statuses, types and balance types. |
| [ExtractMemberlists](07-extracts.md#extractmemberlists) | 2 | Extracts | Extracts the application's member lists file, which defines the named member lists (such as `[Base]` alternatives) used in forms, grids and scripts. |
| [ExtractMetaData](07-extracts.md#extractmetadata) | 3–17 | Extracts | Extracts application metadata. |
| [ExtractMetaDataExtDim](07-extracts.md#extractmetadataextdim) | 3–9 | Extracts | Extracts application metadata, with dimensions chosen in a single string. |
| [ExtractModuleConfiguration](07-extracts.md#extractmoduleconfiguration) | 2 | Extracts | Extracts the application's module configuration: which modules (such as journals, intercompany transactions and equity pickup) are enabled. |
| [ExtractPhaseInfo](07-extracts.md#extractphaseinfo) | 3 | Extracts | Extracts phase submission (phase group) data for all scenarios, years, periods and entities (Entity Currency, base accounts, ICPs and custom members), and waits for the extract to finish. |
| [ExtractRules](07-extracts.md#extractrules) | 3 | Extracts | Extracts the application's rules (its calculation, translation and consolidation logic), for example to back them up before loading new rules with `LoadRules`. |
| [ExtractSecurity](07-extracts.md#extractsecurity) | 3 | Extracts | Extracts all security (users, security classes, role access and security class access) in the native format. |
| [ExtractSecurityExpanded](07-extracts.md#extractsecurityexpanded) | 3–7 | Extracts | Extracts security in the native format, optionally choosing which parts to include. |
| [FilterDataAudit](01-administration.md#filterdataaudit) | 3 | Administration | Exports the data audit records for one user (or all users) that match a POV to a file. |
| [FilterEPUGrid](06-epu.md#filterepugrid) | 15 | EPU | Retrieves the equity pickup grid, as shown on the Manage Equity Pickup page, for a Scenario, Year and Period with the given filters, and writes it to a UTF-8 file. |
| [FilterICTransactions](08-intercompany.md#filterictransactions) | 25 | Intercompany | Writes the intercompany transactions matching the filters to a file, in the same format as `GetICTransactions`. |
| [FilterJournals](09-journals.md#filterjournals) | 14 | Journals | Writes a list of journals matching the filters to a UTF-8, semicolon-separated file, with a header line of column names. |
| [FilterMonitorIntercompany](08-intercompany.md#filtermonitorintercompany) | 5 or 8 | Intercompany | Writes a filtered Monitor Intercompany list (up to 500 entities) to a file, in the same format as `ListMonitorIntercompany`. |
| [FilterProcessControlGrid](04-data-grid.md#filterprocesscontrolgrid) | 9–11 | Data Grid | Writes the process control grid to a file, filtered by phase, review level, pass/fail and calculation status. |
| [FilterTaskAudit](01-administration.md#filtertaskaudit) | 3 | Administration | Exports the task audit records for one user (or all users) and one task (or all tasks) to a file. |
| [FilterTemplates](09-journals.md#filtertemplates) | 9 | Journals | Writes a list of journal templates matching the filters to a UTF-8, semicolon-separated file, with a header line of column names. |
| [GenerateEPUReport](06-epu.md#generateepureport) | 3 | EPU | Generates the EPU system report for a POV, waits for it to finish, and copies it to the output path. |
| [GenerateFilteredEPUReport](06-epu.md#generatefilteredepureport) | 8 | EPU | Generates the EPU system report with owner, owned, circular ownership and status filters, waits for it to finish, and copies it to the output path. |
| [GenerateRecurring](09-journals.md#generaterecurring) | 2 | Journals | Generates a journal from a recurring template for the Scenario, Year and Period in the POV. |
| [GenerateRecurringJournal](09-journals.md#generaterecurringjournal) | 8 | Journals | **Does nothing.** The command's code is empty in this version of JHAT. |
| [GenerateReport](15-journal-reports.md#generatereport) | 5–6 | Journal Reports | Runs a report definition stored in Document Manager, waits for it to finish, and copies the result to a local file. |
| [GetAdjustments](09-journals.md#getadjustments) | 0 | Journals | Writes the journal adjustments for the cell at the POV set by `SetPOV` to the log, or "No adjustments found." |
| [GetAutoJournalReport](15-journal-reports.md#getautojournalreport) | 2 | Journal Reports | Writes every journal for a scenario, year, period and value (using the session's current journal filter) to a UTF-8 file. |
| [GetAutoJournalReportWithFilter](15-journal-reports.md#getautojournalreportwithfilter) | 4 | Journal Reports | Same as `GetAutoJournalReport`, but first sets the session's journal filter to the given entity and group filters (the new filters are written to the log). |
| [GetCalcStatusSummary](04-data-grid.md#getcalcstatussummary) | 1–2 | Data Grid | Writes the number of entities at each calculation status to a semicolon-separated file. |
| [GetCell](04-data-grid.md#getcell) | 0 | Data Grid | Writes the cell at the current POV to the log: displayed data, full-resolution data, stored data, calculation status and cell status. |
| [GetCellEntityDetails](04-data-grid.md#getcellentitydetails) | 1 | Data Grid | Writes the Entity Details report for the current POV to a colon-separated file. |
| [GetCellHistory](04-data-grid.md#getcellhistory) | 1 | Data Grid | Writes the change history of the cell at the current POV to a file: user, server, activity, time modified and value for each change. |
| [GetCellInfo](04-data-grid.md#getcellinfo) | 0 | Data Grid | Writes detailed information about the cell at the current POV to the log: |
| [GetCellsExtDim](04-data-grid.md#getgridextdim--getcellsextdim) | 2 | Data Grid | Writes the whole grid defined by `DefineGrid` / `DefineGridExtDim` to a semicolon-separated file, in the same layout as `GetGrid`. |
| [GetCellStatus](04-data-grid.md#getcellstatus) | 0 | Data Grid | **Don't use.** This is leftover test code. |
| [GetCellTextAttachmentsEnhanced](04-data-grid.md#getcelltextattachmentsenhanced) | 2 | Data Grid | Lists the attached documents on the cell at the current POV. |
| [GetCellTextEnhanced](04-data-grid.md#getcelltextenhanced) | 2 | Data Grid | Gets the cell text on the cell at the current POV. |
| [GetDataAudit](01-administration.md#getdataaudit) | 1 | Administration | Exports all data audit records, for all users and POVs, to a file. |
| [GetDestinationTransactions](04-data-grid.md#getdestinationtransactions) | 1 | Data Grid | Writes the destination transactions for the cell at the current POV (statutory applications) to a semicolon-separated file, in the same format as `GetSourceTransactions`. |
| [GetForm](03-data-form.md#getform) | 4–10 | Data Form | Runs a data form stored in Document Manager and saves the result to an output file as an HTML table. |
| [GetGrid](04-data-grid.md#getgrid) | 4 | Data Grid | Writes rows of the grid defined by `DefineGrid` / `DefineGridExtDim` to a semicolon-separated file. |
| [GetGridExtDim](04-data-grid.md#getgridextdim--getcellsextdim) | 2 | Data Grid | Writes the whole grid defined by `DefineGrid` / `DefineGridExtDim` to a semicolon-separated file, in the same layout as `GetGrid`. |
| [GetICTransactions](08-intercompany.md#getictransactions) | 4 | Intercompany | Writes every intercompany transaction for a scenario, year and period to a file. |
| [GetJournal](09-journals.md#getjournal) | 4 | Journals | Writes a journal to the log: label, description, type, group, status, balance type, security class, value and period, then one tab-separated line per entry (dimension members, debit/credit/unit, amount, description). |
| [GetJournalGroups](09-journals.md#getjournalgroups) | 0 | Journals | Writes every journal group's name and description to the log. |
| [GetLatestTaskAuditAttachment](01-administration.md#getlatesttaskauditattachment) | 3 | Administration | Finds the matching task audit record with the most recent end time and downloads its attachment (for example, the log of a consolidation or data load) to the output path. |
| [GetLineItemDetail](04-data-grid.md#getlineitemdetail) | 1 | Data Grid | Writes the line item detail for the cell at the current POV to a semicolon-separated file (`Description;Line Item Data`). |
| [GetMemberProperties](13-miscellaneous-actions.md#getmemberproperties) | 3 | Miscellaneous Actions | Writes the properties of one or more members to a UTF-8 file. |
| [GetPhaseSubmissionGrid](14-process-management.md#getphasesubmissiongrid) | 3–3 | Process Management | Writes the phased submission group assignments for a scenario to a UTF-8, semicolon-separated file: a header of `Period;Phase1;Phase2;…`, then one line per period. |
| [GetPreferences](02-application.md#getpreferences) | 3 | Application | Gets the logged-on user's preferences for an application and writes them to an output file, one `PREFERENCE=value` per line. |
| [GetProcessControlGrid](04-data-grid.md#getprocesscontrolgrid) | 4 | Data Grid | Writes the process control grid to a file. |
| [GetReviewLevelSummary](04-data-grid.md#getreviewlevelsummary) | 1 | Data Grid | Writes the number of entities at each review level to a file. |
| [GetSourceTransactions](04-data-grid.md#getsourcetransactions) | 1 | Data Grid | Writes the source transactions for the cell at the current POV (statutory applications) to a semicolon-separated file. |
| [GetTaskAudit](01-administration.md#gettaskaudit) | 1 | Administration | Exports all task audit records, for all users and tasks, to a file. |
| [GetTemplate](09-journals.md#gettemplate) | 1 | Journals | Writes a template to the log: label, description, type, group, balance type, security class and its entries. |
| [GetValidationAccountInfo](04-data-grid.md#getvalidationaccountinfo) | 7 | Data Grid | Writes the phase submission validation grid for a POV and phase to a comma-separated file. |
| [ICAutoMatchByAccount](08-intercompany.md#icautomatchbyaccount) | 10 | Intercompany | Runs Auto Match by account and waits for the task to finish. |
| [ICAutoMatchByID](08-intercompany.md#icautomatchbyid) | 10 | Intercompany | Runs Auto Match by transaction ID or reference ID and waits for the task to finish. |
| [InitICTransactionList](08-intercompany.md#initictransactionlist) | 0 | Intercompany | Empties the in-memory list of transactions used by `ProcessICTransaction`. |
| [InitLists](07-extracts.md#initlists) | 0 | Extracts | Empties every list (all dimensions and all string lists). |
| [ListICPeriods](08-intercompany.md#listicperiods) | 3 | Intercompany | Writes each intercompany period of a scenario and year to a file. |
| [ListJournalPeriods](09-journals.md#listjournalperiods) | 2 | Journals | Writes each period's journal status for a scenario and year to the log (`Period:…` / `Status:…`). |
| [ListMonitorIntercompany](08-intercompany.md#listmonitorintercompany) | 4 | Intercompany | Writes the Monitor Intercompany list (up to 500 entities) to a file. |
| [ListMonitorIntercompanySummary](08-intercompany.md#listmonitorintercompanysummary) | 4 | Intercompany | Writes the Monitor Intercompany summary to a file: the number of Not Started and Started entities that are locked, unlocked and in total. |
| [ListReasonCodes](08-intercompany.md#listreasoncodes) | 1 | Intercompany | Writes every reason code to a file (`Label;Description`). |
| [LoadData](10-load.md#loaddata) | 6 | Load | Loads a native-format data file and waits for the task to finish (see [long-running tasks](00-automation-with-jhat.md#long-running-tasks)). |
| [LoadDocument](10-load.md#loaddocument) | 0–9 | Load | Loads a local file into Document Manager, or creates a Document Manager folder when File Type is `Folder`. |
| [LoadICTransactions](10-load.md#loadictransactions) | 0–5 | Load | Loads (or scans) an intercompany transactions file and waits for the task to finish. |
| [LoadJournal](10-load.md#loadjournal) | 3 | Load | Loads a journals file. |
| [LoadMacros](11-macros.md#loadmacros) | 1 | Macros | Defines macros from a text file. |
| [LoadMemberLists](10-load.md#loadmemberlists) | 2 or 3 | Load | Loads (or scans) a member lists file. |
| [LoadMetaData](10-load.md#loadmetadata) | 3 or 17 or 18 | Load | Loads a metadata file. |
| [LoadMetaDataExtDim](10-load.md#loadmetadataextdim) | 5–10 | Load | Loads a metadata file, with dimensions chosen in a single string. |
| [LoadModuleConfiguration](10-load.md#loadmoduleconfiguration) | 2 or 3 | Load | Loads a module configuration file. |
| [LoadPhaseInfo](10-load.md#loadphaseinfo) | 4 | Load | Loads a phase submission data file and waits for the task to finish. |
| [LoadRules](10-load.md#loadrules) | 2 or 3 | Load | Loads (or scans) a rules file. |
| [LoadSecurity](10-load.md#loadsecurity) | 5 | Load | Loads a security file, including all parts (users, security classes, role access and security class access). |
| [LoadSecurityExpanded](10-load.md#loadsecurityexpanded) | 9 | Load | Loads a security file, choosing which parts to load. |
| [Lock](04-data-grid.md#lock) | 0 | Data Grid | Runs the [Lock](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s09.html) command on the current POV. |
| [LockICEntity](04-data-grid.md#lockicentity) | 4 | Data Grid | This version's code is empty, so it does nothing. |
| [LockICEntity](08-intercompany.md#lockicentity) | 4 | Intercompany | Locks entities for intercompany in a period. |
| [Logon](02-application.md#logon) | 4 | Application | Authenticates the user against Shared Services and keeps the SSO token for the rest of the script. |
| [Logout](02-application.md#logout) | 0 | Application | Discards the SSO token and stored credentials from `Logon`. |
| [ModifyApplication](02-application.md#modifyapplication) | 10 | Application | Changes an existing application's number of years and which modules are enabled, like the [Modify Application](https://docs.oracle.com/cd/E57185_01/OHFMA/help_modifyapp.htm#OHFMA-applications_508) page in HFM. |
| [OpenApplication](02-application.md#openapplication) | 2 | Application | Opens a session on the specified application (locale `en`) using the SSO token from `Logon`, and loads the application's dimensions for `SetPOV`. |
| [OpenICPeriod](08-intercompany.md#openicperiod) | 5–8 | Intercompany | Opens an intercompany period and sets its matching tolerances. |
| [OpenPeriod](09-journals.md#openperiod) | 3 | Journals | Opens a period for journals. |
| [PostJournal](09-journals.md#postjournal) | 4 | Journals | Posts a journal. |
| [ProcessAllICTransactions](08-intercompany.md#processallictransactions) | 4 | Intercompany | Posts, unposts, deletes or unmatches every intercompany transaction in a period, and waits for the task to finish. |
| [ProcessFlowApprove](14-process-management.md#processflowapprove) | 3–5 | Process Management | Approves the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`). |
| [ProcessFlowChangeIncludeDescendants](14-process-management.md#processflowchangeincludedescendants) | 3 | Process Management | Runs a process flow action on the process unit at the current POV **and its descendants**, for one or more phases. |
| [ProcessFlowGetHistory](14-process-management.md#processflowgethistory) | 1–3 | Process Management | Writes the cell's process flow history to a UTF-8 file: a `Process Flow History:` line, then one tab-separated line per entry (time, user, action, new state, comment). |
| [ProcessFlowPromote](14-process-management.md#processflowpromote) | 4–6 | Process Management | Promotes the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`). |
| [ProcessFlowPublish](14-process-management.md#processflowpublish) | 3–5 | Process Management | Publishes the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`). |
| [ProcessFlowReject](14-process-management.md#processflowreject) | 3–5 | Process Management | Rejects the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`). |
| [ProcessFlowSignOff](14-process-management.md#processflowsignoff) | 3–5 | Process Management | Signs off the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`). |
| [ProcessFlowStart](14-process-management.md#processflowstart) | 3–5 | Process Management | Starts the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`). |
| [ProcessFlowSubmit](14-process-management.md#processflowsubmit) | 3–5 | Process Management | Submits the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`). |
| [ProcessICTransaction](08-intercompany.md#processictransaction) | 4 | Intercompany | Processes the transactions in the list built with `AddICTransactionToList`. |
| [ProcessICTransactions](08-intercompany.md#processictransactions) | 4 | Intercompany | Processes the transactions matching a filter, and waits for the task to finish. |
| [RejectJournal](09-journals.md#rejectjournal) | 4 | Journals | Rejects a journal. |
| [RemoveMacro](11-macros.md#removemacro) | 1 | Macros | Removes a macro. |
| [ReplaceLineInTextFile](16-runtime-actions.md#replacelineintextfile) | 3 | Runtime Actions | Replaces every line of a text file that matches a given line (whole line, ignoring case) with new text. |
| [ScanJournal](09-journals.md#scanjournal) | 4 | Journals | Validates a journal. |
| [SetCell](04-data-grid.md#setcell) | 1 | Data Grid | Sets the value of the cell at the current POV. |
| [SetCellTextEnhanced](04-data-grid.md#setcelltextenhanced) | 2 | Data Grid | Sets the cell text for a cell text label on the cell at the current POV. |
| [SetLineItemDetail](04-data-grid.md#setlineitemdetail) | 3 | Data Grid | Sets one line item on each of several cells. |
| [SetNegativeTestingFlag](16-runtime-actions.md#setnegativetestingflag) | 1 | Runtime Actions | Marks the following commands as negative tests (tests expected to fail). |
| [SetPOV](02-application.md#setpov--setpovname) | 12 | Application | Sets the point of view (POV) for the commands that follow. |
| [SetPOVExtDim](02-application.md#setpovextdim) | 2 | Application | Sets the point of view (POV) for the commands that follow, like `SetPOV`, but takes the POV as a single string. |
| [SetPOVName](02-application.md#setpov--setpovname) | 12 | Application | Sets the point of view (POV) for the commands that follow. |
| [SetPreferences](02-application.md#setpreferences) | 7 | Application | Sets the logged-on user's preferences for an application. |
| [SetSubmissionGroup](14-process-management.md#setsubmissiongroup) | 3–3 | Process Management | Sets the submission group value for a period in one phase of a scenario. |
| [ShowMacros](11-macros.md#showmacros) | 0 | Macros | Writes every defined macro to the log as `Macro: name = value`. |
| [shutdownApplication](02-application.md#shutdownapplication) | 0 | Application | Shuts down the currently open application (the one from `OpenApplication`) on all the Jhsxserver instances across all the clusters and servers. |
| [StartLoadData](10-load.md#startloaddata) | 6 | Load | Identical to `LoadData`, including waiting for the load to finish. |
| [StartTimer](16-runtime-actions.md#starttimer) | 2 | Runtime Actions | Starts one of 25 timers. |
| [StopTimer](16-runtime-actions.md#stoptimer) | 1 | Runtime Actions | Stops a timer and writes the elapsed time to the log, in milliseconds and as hours, minutes and seconds. |
| [SubmitJournal](09-journals.md#submitjournal) | 4 | Journals | Submits a journal. |
| [SubstituteMacro](11-macros.md#substitutemacro) | 1 | Macros | The routine JHAT runs automatically before every command to replace macro names in its parameters. |
| [Translate](04-data-grid.md#translate) | 0 | Data Grid | Runs the [Translate](https://docs.oracle.com/cd/E57185_01/HFMUR/ch05s05.html) command on the current POV. |
| [Unlock](04-data-grid.md#unlock) | 0 | Data Grid | Runs the [Unlock](https://docs.oracle.com/cd/E57185_01/HFMUR/ch04s10.html) command on the current POV, so its data can be changed again. |
| [UnlockICEntity](04-data-grid.md#unlockicentity) | 4 | Data Grid | This version's code is empty, so it does nothing. |
| [UnlockICEntity](08-intercompany.md#unlockicentity) | 4 | Intercompany | Unlocks entities for intercompany in a period. |
| [UnPostJournal](09-journals.md#unpostjournal) | 4 | Journals | Unposts a journal. |
| [UnSubmitJournal](09-journals.md#unsubmitjournal) | 4 | Journals | Unsubmits a journal. |
| [UpdateICPeriod](08-intercompany.md#updateicperiod) | 5–8 | Intercompany | Changes an intercompany period's settings. |
| [UpdateParameter](13-miscellaneous-actions.md#updateparameter) | 2 | Miscellaneous Actions | Sets an HFM system parameter by writing directly to the `XFM_PARAMETERS` table in the HFM database, for cluster, server and application `ALL`. |
| [ValidateJournalTemplatePOV](09-journals.md#validatejournaltemplatepov) | 1 | Journals | Asks HFM to validate a journal POV. |
| [ViewUnassignedGroups](14-process-management.md#viewunassignedgroups) | 3–3 | Process Management | Writes the submission groups not assigned to a phase for a scenario and period to a UTF-8 file. |
