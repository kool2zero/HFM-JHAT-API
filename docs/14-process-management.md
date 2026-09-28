# JHAT Commands: Process Management

[← Back to index](../README.md)

#### Overview

These JHAT Commands are related to Process Management actions

#### Commands

<details id="bkmrk-ProcessFlowGetHistory-"><summary>ProcessFlowGetHistory</summary>

<p class="callout info">Process Flow Get History</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Log File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Log File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Time?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Time?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User?

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowGetHistory("C:hfmhistoryfile.log"," true|false"," true|false");
```

</details><details id="bkmrk-ProcessFlowChangeIncludeDescendants-"><summary>ProcessFlowChangeIncludeDescendants</summary>

<p class="callout info">Process Flow Change Include Descendants</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Action</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Action

- `START`
- `PROMOTE`
- `SIGNOFF`
- `SUBMIT`
- `APPROVE`
- `PUBLISH`
- `REJECT`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Not Applicable</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Not Applicable</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Phases</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phases (can be comma Delimited)</td></tr></tbody></table>

**Example**

```dart
ProcessFlowChangeIncludeDescendants("Start","NA"," 1");
```

</details><details id="bkmrk-ProcessFlowStart-"><summary>ProcessFlowStart</summary>

<p class="callout info">Process Flow Start</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowStart("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowPromote-"><summary>ProcessFlowPromote</summary>

<p class="callout info">Process Flow Promote</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Review Level to Promote to RL#</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Review Level to Promote to RL#

- `RL1`
- `RL2`
- `RL3`
- etc

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowPromote("Comment"," Use all members values true or false"," Filename to put history in"," Review Level to Promote to RL#"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowSubmit-"><summary>ProcessFlowSubmit</summary>

<p class="callout info">Process Flow Submit</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowSubmit("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowApprove-"><summary>ProcessFlowApprove</summary>

<p class="callout info">Process Flow Approve</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 217.891px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 46.5938px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowApprove("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowPublish-"><summary>ProcessFlowPublish</summary>

<p class="callout info">Process Flow Publish</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowPublish("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowSignOff-"><summary>ProcessFlowSignOff</summary>

<p class="callout info">Process Flow Sign Off</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--6" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowSignOff("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-ProcessFlowReject-"><summary>ProcessFlowReject</summary>

<p class="callout info">Process Flow Reject</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--7" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Use All Member Values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Use All Member Values</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress Timestamp</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress Timestamp

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Suppress User ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Suppress User ID

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
ProcessFlowReject("Comment"," Use all members values true or false"," Filename to put history in"," Supress timestamp true||false "," Supress user idtrue||false");
```

</details><details id="bkmrk-GetPhaseSubmissionGrid-"><summary>GetPhaseSubmissionGrid</summary>

<p class="callout info">GetPhaseSubmissionGrid</p>

<p class="callout warning">Must Call `SetPOV` prior to calling this.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--8" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Phase</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phase

- `All`
- `1`
- `2`
- `3`
- etc

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr></tbody></table>

**Example**

```dart
GetPhaseSubmissionGrid("Scenario"," All | Phase number"," Output File Path");
```

</details><details id="bkmrk-ViewUnassignedGroups-"><summary>ViewUnassignedGroups</summary>

<p class="callout info">View Unassigned Groups</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--9" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr></tbody></table>

**Example**

```dart
ViewUnassignedGroups("Scenario"," Period"," Output File Path");
```

</details><details id="bkmrk-SetSubmissionGroup-"><summary>SetSubmissionGroup</summary>

<p class="callout info">Set Submission Group</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--10" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Phase</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Phase</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Group Value</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Group Value</td></tr></tbody></table>

**Example**

```dart
SetSubmissionGroup("Scenario"," Period"," Phase"," Group Value");
```

</details>
