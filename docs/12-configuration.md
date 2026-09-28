# JHAT Commands: Configuration

[← Back to index](../README.md)

## Overview

These JHAT Commands are related to configuration actions

## Commands

**Commands on this page:**

[DisableEnableModule](#disableenablemodule)

### DisableEnableModule

<p class="callout info">Enables or disables one module of the open application. HFM stores the list of disabled modules: <code>Disable</code> adds the module to it and <code>Enable</code> removes it. If the module is already in the requested state, or the second parameter is neither value, nothing changes and the command still reports success.</p>

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Module Name | ✓ | e.g. `processmanagement`, `manageownership`, `journals`, `datamanagement`, `audittasks`, `ict`, `epu` (the names `ModifyApplication` uses). Matched ignoring case. |
| Enable or Disable | ✓ | `Enable` or `Disable` |

**Example**

```dart
OpenApplication("Cluster","Application");
DisableEnableModule("epu","Disable");
```
