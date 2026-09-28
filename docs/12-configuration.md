# JHAT Commands: Configuration

[← Back to index](../README.md)

## Overview

Commands for turning application modules, such as journals, intercompany transactions or equity pickup, on or off. See also `ModifyApplication` on the [Application](02-application.md) page and `ExtractModuleConfiguration` / `LoadModuleConfiguration`.

## Commands

**Commands on this page:**

[DisableEnableModule](#disableenablemodule)

### DisableEnableModule

> [!NOTE]
> Enables or disables one module of the open application. HFM stores the list of disabled modules: `Disable` adds the module to it and `Enable` removes it. If the module is already in the requested state, or the second parameter is neither value, nothing changes and the command still reports success.

**Input**

| Parameter | Mandatory | Comment |
| --- | :---: | --- |
| Module Name | ✓ | e.g. `processmanagement`, `manageownership`, `journals`, `datamanagement`, `audittasks`, `ict`, `epu` (the names `ModifyApplication` uses). Matched ignoring case. |
| Enable or Disable | ✓ | `Enable` or `Disable` |

**Example**

```text
OpenApplication("Cluster","Application");
DisableEnableModule("epu","Disable");
```
