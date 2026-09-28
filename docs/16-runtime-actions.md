# JHAT Commands: Runtime Actions

[← Back to index](../README.md)

#### Overview

These JHAT Commands are related to Runtime actions

#### Commands

<details id="bkmrk-Delay-"><summary>Delay</summary>

<p class="callout info">Delay</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">interval</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Interval in miliseconds</td></tr></tbody></table>

**Example**

```dart
Delay("interval");
```

</details><details id="bkmrk-ReplaceLineInTextFile-"><summary>ReplaceLineInTextFile</summary>

<p class="callout info">Replace Line In Text File</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“\_\_@SCRIPTDIR\_\_Rules.rle”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Text to Find</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Const BuildandTieFolder =”</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Replacement Text</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">“Const BuildandTieFolder = \_\_@DQUOTECHAR\_\_\_\_@BASEDIR\_\_\_\_@DQUOTECHAR\_\_</td></tr></tbody></table>

**Example**

```dart
ReplaceLineInTextFile("“__@SCRIPTDIR__Rules.rle”"," “Const BuildandTieFolder =”"," “Const BuildandTieFolder = __@DQUOTECHAR____@BASEDIR____@DQUOTECHAR__ ");
```

</details><details id="bkmrk-BeginLoop-"><summary>BeginLoop</summary>

<p class="callout info">Begin Loop</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Repeat count</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Repeat count</td></tr></tbody></table>

**Example**

```dart
BeginLoop("Repeat count");
```

</details><details id="bkmrk-EndLoop-"><summary>EndLoop</summary>

<p class="callout info">End Loop</p>

**Input**

None

**Example**

```dart
EndLoop();
```

</details><details id="bkmrk-StartTimer-"><summary>StartTimer</summary>

<p class="callout info">StartTimer</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Timer ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Timer ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Timer Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Timer Name</td></tr></tbody></table>

**Example**

```dart
StartTimer("3","Time to Load Metadata");
```

</details><details id="bkmrk-StopTimer-"><summary>StopTimer</summary>

<p class="callout info">Stop Timer</p>

<p class="callout warning">Must Run `StartTimer` first</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Timer ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">1</td></tr></tbody></table>

**Example**

```dart
StopTimer("1");
```

</details><details id="bkmrk-AbortOnError-"><summary>AbortOnError</summary>

<p class="callout info">Abort On Error</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Abort on Error</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Abort on Error

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
AbortOnError("true");
```

</details><details id="bkmrk-SetNegativeTestingFlag-"><summary>SetNegativeTestingFlag</summary>

<p class="callout info">SetNegativeTestingFlag</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--5" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Set Negative Testing Flag</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Set Negative Testing Flag

- `true`
- `false`

</td></tr></tbody></table>

**Example**

```dart
SetNegativeTestingFlag("true");
```

</details><details id="bkmrk-CallOtherProcess-"><summary>CallOtherProcess</summary>

<p class="callout info">Call Other Process</p>

<p class="callout info">Can have up to 100 arguments</p>

<p class="callout warning">JHAT will add double quotes around each argument.</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--6" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Executable</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Executable</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Argument 1</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Argument 1</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Argument 2</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Argument 2</td></tr></tbody></table>

**Example**

```dart
CallOtherProcess("Wscript.exe","C:hfmconsolidate.wsf","");
```

</details><details id="bkmrk-CompareFiles-"><summary>CompareFiles</summary>

<p class="callout info">Compare Files</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--7" style="height: 206.672px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File 1</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File 1</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File 2</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File 2</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Mode</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Mode</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Diff File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Diff File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Exclusion Rules</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Exclusion Rules</td></tr></tbody></table>

**Example**

```dart
CompareFiles("file1"," file2"," mode"," diffFile"," exclusion_rules");
```

</details><details id="bkmrk-CompareFilesContentNotOrdered-"><summary>CompareFilesContentNotOrdered</summary>

<p class="callout info">Compare Files Content Not Ordered</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--8" style="height: 110.547px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File 1</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File 1</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File 2</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File 2</td></tr><tr style="height: 10px;"><td style="width: 31.6644%; height: 10px;">Diff File</td><td class="align-center" style="width: 18.1326%; height: 10px;">✓</td><td style="width: 50.203%; height: 10px;">Diff File</td></tr></tbody></table>

**Example**

```dart
CompareFilesContentNotOrdered("file1"," file2"," diffFile");
```

</details><details id="bkmrk-CompareMultipleFiles-"><summary>CompareMultipleFiles</summary>

<p class="callout info">Compare Multiple Files</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--9" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Spec</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">File Spec</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Directory</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Directory</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Mode</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Mode

- `TEXT`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Exclusion Rules</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Exclusion Rules</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Difference Directory</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Difference Directory</td></tr></tbody></table>

**Example**

```dart
CompareMultipleFiles("filenamespec"," directory"," mode"," rules","  diffDirectory;"," ");
```

</details>
