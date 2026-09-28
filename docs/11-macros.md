# JHAT Command: Macros

[← Back to index](../README.md)

#### Overview

These JHAT Commands are related to Macros

#### How macros work

A macro is a name and a replacement text. When a macro is defined, JHAT replaces every occurrence of its name in a command's parameters with the replacement text:

- **Matching:** plain text, case-sensitive, anywhere inside a parameter. It isn't a whole-word match.
- **Naming:** give macros names that can't appear by accident, such as `__ENV__`.
- **Scope:** macros last until the end of the script.
- **When substitution happens:** just before each command runs, so a macro defined on one line applies to every later line.
- **Built-in macros:** `__@SCRIPTDIR__`, `__@MACROFILEDIR__` and `__@BASEDIR__` are set automatically (see [How a script runs](00-automation-with-jhat.md#how-a-script-runs)). A macro file can also be loaded at startup with the `-M` option.
- **Logging:** `Comment`, `LoadMacros` and `SubstituteMacro` don't write the usual start/end/success lines to the log.

#### Commands

<details id="bkmrk-SubstituteMacro-"><summary>SubstituteMacro</summary>

<p class="callout info">The routine JHAT runs automatically before every command to replace macro names in its parameters. It skips <code>DefineMacro</code> and <code>RemoveMacro</code>, so those see the macro name itself. Calling it from a script only substitutes within its own parameter, which has no useful effect.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Text | ✓ | Text to substitute macros in |

**Example**

```dart
SubstituteMacro("__MacroName__");
```

</details><details id="bkmrk-DefineMacro-"><summary>DefineMacro</summary>

<p class="callout info">Defines a macro, or replaces the value of an existing one.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Macro Name | ✓ | Text to be replaced, e.g. `__APP__` |
| Replacement Text | ✓ | Text to put in its place |

**Example**

```dart
DefineMacro("__APP__","COMMA");
OpenApplication("HFMCluster","__APP__");
```

</details><details id="bkmrk-DefineMacroEx-"><summary>DefineMacroEx</summary>

<p class="callout info">Defines a macro whose value is the parameters after the name, joined together with nothing between them. Macros already defined are replaced inside each part.</p>

<p class="callout warning">Only one macro is replaced in each part: the first one found, in no guaranteed order. Put at most one macro in each part.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Macro Name | ✓ | Name of the new macro |
| Part 1 | ✓ | First part of the value (text or an existing macro) |
| Part 2 … | | More parts, up to 98 in total |

**Example**

```dart
DefineMacro("__DIR__","C:\JHAT\");
DefineMacroEx("__LOG__","__DIR__","load.log");
```

</details><details id="bkmrk-RemoveMacro-"><summary>RemoveMacro</summary>

<p class="callout info">Removes a macro. Fails with "Cannot remove. Macro [name] not found" if the macro isn't defined.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Macro Name | ✓ | Name of the macro to remove |

**Example**

```dart
RemoveMacro("__APP__");
```

</details><details id="bkmrk-ShowMacros-"><summary>ShowMacros</summary>

<p class="callout info">Writes every defined macro to the log as <code>Macro: name = value</code>.</p>

**Input**

None

**Example**

```dart
ShowMacros();
```

</details><details id="bkmrk-Comment-"><summary>Comment</summary>

<p class="callout info">Writes the text to the log and does nothing else.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Text | ✓ | Text to log |

**Example**

```dart
Comment("Starting month-end load");
```

</details><details id="bkmrk-LoadMacros-"><summary>LoadMacros</summary>

<p class="callout info">Defines macros from a text file. Fails if the file doesn't exist.</p>

File format:

- One `name=value` per line. Spaces are kept as part of the name and value.
- Lines starting with `'` or `!` are comments. Lines without `=` are skipped.
- The value can be built from parts joined with `+` (e.g. `__DIR__+load.log`). An existing macro is replaced in each part, as for `DefineMacroEx`.
- Everything after a second `=` on a line is dropped, so values can't contain `=`.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Macro File | ✓ | Path to the macro file |

**Example**

```dart
LoadMacros("C:\JHAT\macros.txt");
```

With `macros.txt`:

```ini
' Environment settings
__APP__=COMMA
__DIR__=C:\JHAT\
__LOG__=__DIR__+load.log
```

</details>
