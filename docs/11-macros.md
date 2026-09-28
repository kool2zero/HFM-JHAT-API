# JHAT Command: Macros

[← Back to index](../README.md)

#### Overview

These JHAT Commands are related to Macros

#### Commands

<details id="bkmrk-SubstituteMacro-"><summary>SubstituteMacro</summary>

<p class="callout info">Substitute Macro</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Macro Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Macro Name</td></tr></tbody></table>

**Example**

```dart
SubstituteMacro("__MacroName__");
```

</details><details id="bkmrk-DefineMacro-"><summary>DefineMacro</summary>

<p class="callout info">Define Macro</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Macro Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Macro Name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Macro Replacement Text</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Macro Replacement Text</td></tr></tbody></table>

**Example**

```dart
DefineMacro("__MacroName__"," MacroRecplacmentText");
```

</details><details id="bkmrk-DefineMacroEx-"><summary>DefineMacroEx</summary>

<p class="callout info">Define Macro Ex</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">\_\_ExMacroName\_\_</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">\_\_ExMacroName\_\_</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">\_\_MacroName\_\_/MacroRecplacmentText</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">\_\_MacroName\_\_/MacroRecplacmentText</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">\_\_MacroName\_\_/MacroRecplacmentText ...</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">\_\_MacroName\_\_/MacroRecplacmentText ...</td></tr></tbody></table>

**Example**

```dart
DefineMacroEx("__ExMacroName__","__MacroName__/MacroRecplacmentText"," __MacroName__/MacroRecplacmentText ...");
```

</details><details id="bkmrk-RemoveMacro-"><summary>RemoveMacro</summary>

<p class="callout info">Remove Macro</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--2" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Macro Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Macro Name</td></tr></tbody></table>

**Example**

```dart
RemoveMacro("__MacroName__");
```

</details><details id="bkmrk-ShowMacros-"><summary>ShowMacros</summary>

<p class="callout info">ShowMacros</p>

**Input**

None

**Example**

```dart
ShowMacros("");
```

</details><details id="bkmrk-Comment-"><summary>Comment</summary>

<p class="callout info">Comment</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--3" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment Text</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment Text</td></tr></tbody></table>

**Example**

```dart
Comment("comment text");
```

</details><details id="bkmrk-LoadMacros-"><summary>LoadMacros</summary>

<p class="callout info">Load Macros</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--4" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Macro File Name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Macro File Name</td></tr></tbody></table>

**Example**

```dart
LoadMacros("macro file name");
```

</details>
