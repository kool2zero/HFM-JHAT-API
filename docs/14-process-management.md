# JHAT Commands: Process Management

[← Back to index](../README.md)

## Overview

Commands for HFM process management, which controls the review and approval of data.

- **Process units:** data is reviewed in process units, a combination of scenario, year, period, entity and value.
- **Review levels:** a process unit moves through *Not Started*, *First Pass*, *Review Level 1* to *10*, *Submitted*, *Approved* and *Published*.
- **Actions:** *Start*, *Promote* (to a review level), *Submit*, *Approve*, *Publish*, *Sign Off* and *Reject* move it between levels. Who can take each action depends on the user's process management role.
- **Phased submission:** accounts, custom and ICP members are assigned to submission groups, and groups are assigned to phases (JHAT handles phases 1–9). Each phase is promoted separately, and a phase can't be promoted to a higher review level than any lower-numbered phase.

## Commands

These commands work on the process unit at the POV set by `SetPOV` (Scenario, Year, Period, Entity and Value) and need an open application. A command that needs a POV fails if none has been set.

**Commands on this page:**

- **Process flow actions:** [ProcessFlowGetHistory](#processflowgethistory), [ProcessFlowStart](#processflowstart), [ProcessFlowSubmit](#processflowsubmit), [ProcessFlowApprove](#processflowapprove), [ProcessFlowPublish](#processflowpublish), [ProcessFlowSignOff](#processflowsignoff), [ProcessFlowReject](#processflowreject), [ProcessFlowPromote](#processflowpromote), [ProcessFlowChangeIncludeDescendants](#processflowchangeincludedescendants)
- **Phased submission:** [GetPhaseSubmissionGrid](#getphasesubmissiongrid), [ViewUnassignedGroups](#viewunassignedgroups), [SetSubmissionGroup](#setsubmissiongroup)

### Process flow actions

#### ProcessFlowGetHistory

> [!NOTE]
> Writes the cell's process flow history to a UTF-8 file: a `Process Flow History:` line, then one tab-separated line per entry (time, user, action, new state, comment).

> [!WARNING]
> Because of a bug, the third parameter overwrites the second and user IDs are never suppressed. The command also reports success even if the history can't be written. Check the log for the error.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | History File | Local file to write |
| 2 | Suppress Timestamp | Optional. `true` to leave times out. |
| 3 | Suppress User | Optional. See warning: this actually sets Suppress Timestamp. |

**Example**

```dart
ProcessFlowGetHistory("C:\Output\history.txt");
```

#### ProcessFlowStart

> [!NOTE]
> Starts the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`).

> [!NOTE]
> Unlike the other process flow commands, it doesn't write an "End execution" line to the log.

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Comment | Comment recorded with the action |
| 2 | Use All Members | Required but ignored |
| 3 | History File | Local file for the history |
| 4 | Suppress Timestamp | Optional. `true` to leave times out of the history. |
| 5 | Suppress User | Optional. `true` to leave user IDs out of the history. |

**Example**

```dart
ProcessFlowStart("Month-end","false","C:\Output\history.txt");
```

#### ProcessFlowSubmit

> [!NOTE]
> Submits the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`).

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Comment | Comment recorded with the action |
| 2 | Use All Members | Required but ignored |
| 3 | History File | Local file for the history |
| 4 | Suppress Timestamp | Optional. `true` to leave times out of the history. |
| 5 | Suppress User | Optional. `true` to leave user IDs out of the history. |

**Example**

```dart
ProcessFlowSubmit("Month-end","false","C:\Output\history.txt");
```

#### ProcessFlowApprove

> [!NOTE]
> Approves the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`).

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Comment | Comment recorded with the action |
| 2 | Use All Members | Required but ignored |
| 3 | History File | Local file for the history |
| 4 | Suppress Timestamp | Optional. `true` to leave times out of the history. |
| 5 | Suppress User | Optional. `true` to leave user IDs out of the history. |

**Example**

```dart
ProcessFlowApprove("Month-end","false","C:\Output\history.txt");
```

#### ProcessFlowPublish

> [!NOTE]
> Publishes the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`).

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Comment | Comment recorded with the action |
| 2 | Use All Members | Required but ignored |
| 3 | History File | Local file for the history |
| 4 | Suppress Timestamp | Optional. `true` to leave times out of the history. |
| 5 | Suppress User | Optional. `true` to leave user IDs out of the history. |

**Example**

```dart
ProcessFlowPublish("Month-end","false","C:\Output\history.txt");
```

#### ProcessFlowSignOff

> [!NOTE]
> Signs off the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`).

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Comment | Comment recorded with the action |
| 2 | Use All Members | Required but ignored |
| 3 | History File | Local file for the history |
| 4 | Suppress Timestamp | Optional. `true` to leave times out of the history. |
| 5 | Suppress User | Optional. `true` to leave user IDs out of the history. |

**Example**

```dart
ProcessFlowSignOff("Month-end","false","C:\Output\history.txt");
```

#### ProcessFlowReject

> [!NOTE]
> Rejects the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`).

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Comment | Comment recorded with the action |
| 2 | Use All Members | Required but ignored |
| 3 | History File | Local file for the history |
| 4 | Suppress Timestamp | Optional. `true` to leave times out of the history. |
| 5 | Suppress User | Optional. `true` to leave user IDs out of the history. |

**Example**

```dart
ProcessFlowReject("Month-end","false","C:\Output\history.txt");
```

#### ProcessFlowPromote

> [!NOTE]
> Promotes the process unit at the current POV (without descendants), then writes its process flow history to a file (as for `ProcessFlowGetHistory`).

**Input**

| # | Parameter | Comment |
| --- | --- | --- |
| 1 | Comment | Comment recorded with the action |
| 2 | Use All Members | Required but ignored |
| 3 | History File | Local file for the history |
| 4 | Review Level | `RL0` … `RL10` (any case). Anything else makes the command fail with no message. |
| 5 | Suppress Timestamp | Optional. `true` to leave times out of the history. |
| 6 | Suppress User | Optional. `true` to leave user IDs out of the history. |

**Example**

```dart
ProcessFlowPromote("Month-end","false","C:\Output\history.txt","RL2");
```

#### ProcessFlowChangeIncludeDescendants

> [!NOTE]
> Runs a process flow action on the process unit at the current POV **and its descendants**, for one or more phases. No history file is written.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Action | ✓ | `Start`, `Promote`, `SignOff`, `Submit`, `Approve`, `Publish` or `Reject`. Anything else fails with "Invalid action". |
| Review Level | ✓ | For `Promote`: `RL0` … `RL10`. Ignored for other actions (e.g. `NA`). |
| Phases | ✓ | Phase numbers separated by commas, or `""` for phase 1 |

**Example**

```dart
ProcessFlowChangeIncludeDescendants("Start","NA","1");
ProcessFlowChangeIncludeDescendants("Promote","RL2","1,2");
```

### Phased submission

#### GetPhaseSubmissionGrid

> [!NOTE]
> Writes the phased submission group assignments for a scenario to a UTF-8, semicolon-separated file: a header of `Period;Phase1;Phase2;…`, then one line per period. It doesn't use the current POV.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Phases | ✓ | `All` for phases 1–9, or one phase number |
| Output File | ✓ | Local file to write |

**Example**

```dart
GetPhaseSubmissionGrid("Actual","All","C:\Output\phases.txt");
```

#### ViewUnassignedGroups

> [!NOTE]
> Writes the submission groups not assigned to a phase for a scenario and period to a UTF-8 file. The output is a single line: a header followed by the group names, each ending in `;`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Period | ✓ | |
| Output File | ✓ | Local file to write |

**Example**

```dart
ViewUnassignedGroups("Actual","Dec","C:\Output\unassigned.txt");
```

#### SetSubmissionGroup

> [!NOTE]
> Sets the submission group value for a period in one phase of a scenario.

> [!WARNING]
> JHAT's parameter-count setting says 3, but the command reads 4. Pass all 4. Because the range check never fails (see [parameter checking](00-automation-with-jhat.md#parameter-checking)), 4 are accepted, and 3 make the command crash.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Scenario | ✓ | |
| Period | ✓ | Period to change (matched ignoring case) |
| Phase | ✓ | Phase number |
| Group Value | ✓ | New group value |

**Example**

```dart
SetSubmissionGroup("Actual","Dec","1","GroupA");
```
