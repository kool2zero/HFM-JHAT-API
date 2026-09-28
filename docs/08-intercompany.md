# JHAT Commands: InterCompany

[← Back to index](../README.md)

#### Overview

These JHAT commands will perform intercompany tasks

#### Commands

<details id="bkmrk-InitICTransactionList-"><summary>InitICTransactionList</summary>

<p class="callout info">Initialize Intercompany Transactions List</p>

**Input**

None

**Example**

```dart
InitICTransactionList("");
```

</details><details id="bkmrk-AddICTransactionToList-"><summary>AddICTransactionToList</summary>

<p class="callout info">Add Intercompany Transaction to List</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--76" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Point of View</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Sub ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Sub ID</td></tr></tbody></table>

**Example**

```dart
AddICTransactionToList("S#ActMon.Y#2004.P#January.E#C.I#A.A#PayltIC.C1#Increases.C2#[None].C3#[None].C4#[None]","X785","S01");
```

</details><details id="bkmrk-OpenICPeriod-"><summary>OpenICPeriod</summary>

<p class="callout info">Open Intercompany Period</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--14" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">MVPB</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">MVPB

- `No`
- `Yes`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Account Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Account Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Manual Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Manual Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Tid Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Tid Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Tid Percent</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Tid Percent</td></tr></tbody></table>

**Example**

```dart
OpenICPeriod("Actual","2000"," Quarter2"," “yes”","","","","");
```

</details><details id="bkmrk-UpdateICPeriod-"><summary>UpdateICPeriod</summary>

<p class="callout info">Update Intercompany Period</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory-" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">MVPB</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">MVPB

- `No`
- `Yes`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Account Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Account Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Manual Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Manual Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Tid Tolerance</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Tid Tolerance</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Tid Percent</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Tid Percent</td></tr></tbody></table>

**Example**

```dart
UpdateICPeriod("Actual","2000"," Quarter2"," “yes”","","","","");
```

</details><details id="bkmrk-ProcessAllICTransactions-"><summary>ProcessAllICTransactions</summary>

<p class="callout info">Process All Intercompany Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--47" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Process Action</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Action to perform on IC Transactions

- `Post`
- `UnPost`
- `Delete`
- `UnMatch`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr></tbody></table>

**Example**

```dart
ProcessAllICTransactions("Delete","ActMon","2004","January");
```

</details><details id="bkmrk-ProcessICTransaction-"><summary>ProcessICTransaction</summary>

<p class="callout info">Process Intercompany Transaction</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--48" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Process Action</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Action to perform on IC Transactions

- `Post`
- `UnPost`
- `Delete`
- `UnMatch`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr></tbody></table>

**Example**

```dart
ProcessICTransaction("Delete","Scenario","Year","Period");
```

</details><details id="bkmrk-ProcessICTransactions-"><summary>ProcessICTransactions</summary>

<p class="callout info">Process Intercompany Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--49" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Process Action</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Action to perform on IC Transactions

- `Post`
- `UnPost`
- `Delete`
- `UnMatch`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Point of View</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Sub ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Sub ID</td></tr></tbody></table>

**Example**

```dart
ProcessICTransactions("Delete","S#ActMon.Y#2004.P#January.E#C.I#A.A#PayltIC.C1#Increases.C2#[None].C3#[None].C4#[None]","X785","S01"," ");
```

</details><details id="bkmrk-CreateICTransaction-"><summary>CreateICTransaction</summary>

<p class="callout info">Create IC Transaction</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--50" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Point of View</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Sub ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Sub ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Reference ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Reference ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Date</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Date</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Currency</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Amount</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Amount</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity Currency Amount  
</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity Currency Amount  
</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment 1</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment 1</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Comment 2</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Comment 2</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Reason code</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Reason code</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Conversion Rate</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Conversion Rate</td></tr></tbody></table>

**Example**

```dart
CreateICTransaction("S#ActMon.Y#2004.P#January.E#C.I#A.A#PayltIC.C1#Increases.C2#[None].C3#[None].C4#[None]","Trans id","Sub id"," Ref id","trans date"," trans currency"," trans amount"," entity currency amount"," commnet1 "," comment2","Reason code","Conversion Rate");
```

</details><details id="bkmrk-ICAutoMatchByID-"><summary>ICAutoMatchByID</summary>

<p class="callout info">Intercompany Auto Match by ID</p>

<p class="callout warning">Must Call `AddICTransactionToList` prior to calling this</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--51" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity List

- `All`
- Valid Entity List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP List

- `All`
- Valid ICP List

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">no</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Trans</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">no</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">no</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">no</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">S12</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">S12</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Is Transaction Id</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Is Transaction Id</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction IDs</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction IDs</td></tr></tbody></table>

**Example**

```dart
ICAutoMatchByID("ActMon","2004","January","1","2","no","no","no","Transaction","S12","S13","S15");
```

</details><details id="bkmrk-CloseICPeriod-"><summary>CloseICPeriod</summary>

<p class="callout info">Close Intercompany Period</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--52" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr></tbody></table>

**Example**

```dart
CloseICPeriod("Actual","2000"," Quarter2");
```

</details><details id="bkmrk-ICAutoMatchByAccount-"><summary>ICAutoMatchByAccount</summary>

<p class="callout info">Intercompany Auto match by Account</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--53" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Currency</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">no</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">no</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">no</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">no</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity Accounts</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Parent Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Parent Accounts</td></tr></tbody></table>

**Example**

```dart
ICAutoMatchByAccount("ActMon","2004","January","1","2","no","no","no","","");
```

</details><details id="bkmrk-CreateReasonCode-"><summary>CreateReasonCode</summary>

<p class="callout info">Create Reason Code</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--54" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr></tbody></table>

**Example**

```dart
CreateReasonCode("Label","Description");
```

</details><details id="bkmrk-DeleteReasonCode-"><summary>DeleteReasonCode</summary>

<p class="callout info">Delete Reason Code</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--55" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr></tbody></table>

**Example**

```dart
DeleteReasonCode("Label");
```

</details><details id="bkmrk-DeleteAllReasonCodes-"><summary>DeleteAllReasonCodes</summary>

<p class="callout info">Delete All Reason Codes</p>

**Input**

None

**Example**

```dart
DeleteAllReasonCodes("");
```

</details><details id="bkmrk-ListReasonCodes-"><summary>ListReasonCodes</summary>

<p class="callout info">List Reason Codes</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--56" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">File Path</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output file path</td></tr></tbody></table>

**Example**

```dart
ListReasonCodes("File Path");
```

</details><details id="bkmrk-ListICPeriods-"><summary>ListICPeriods</summary>

<p class="callout info">List Intercompany Periods</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--57" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File Path</td></tr></tbody></table>

**Example**

```dart
ListICPeriods("Scenario","Year","Output File");
```

</details><details id="bkmrk-GetICTransactions-"><summary>GetICTransactions</summary>

<p class="callout info">Get Inter Company Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--58" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr></tbody></table>

**Example**

```dart
GetICTransactions("Scenario","Year","Period","Output File");
```

</details><details id="bkmrk-FilterICTransactions-"><summary>FilterICTransactions</summary>

<p class="callout info">Filter Intercompany Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--59" style="height: 867.641px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity Account List</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity Account List</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Partner Account</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Partner Account</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Sub ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Sub ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Reference ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Reference ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Amount From</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Amount From</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Amount To</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Amount To</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Reason Code</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Reason Code</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Match Code</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Match Code</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Transaction Currency</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Start Date</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Start Date</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">End Date</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">End Date</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Display Entity Transaction</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Display Entity Transaction</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Display Partner Transaction</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Display Partner Transaction</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include Matched?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include Matched?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include Unmatched?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include Unmatched?

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Include Mismatched?</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Include Mismatched?

- `true`
- `false`

</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Include Posted?</td><td class="align-center" style="width: 18.1326%; height: 29.7969px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Include Posted?

- `true`
- `false`

</td></tr><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">Include Unposted?</td><td class="align-center" style="width: 18.1326%; height: 29.7969px;">✓</td><td style="width: 50.203%; height: 29.7969px;">Include Unposted?

- `true`
- `false`

</td></tr><tr><td style="width: 31.6644%;">Output File</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Output File</td></tr></tbody></table>

**Example**

```dart
FilterICTransactions("ActMon","2012","January","Entity","ICP","Entity Account List","Partner Account","Trans ID","Trans SUB ID","Reference ID","Amount From","Amount to","Reason Code","Match Code","Trans Currency","Start date", "End Date", "Display entity trans", "Display partner trans", "include matched", "inlucded unmatched", "include mismatched", "include posted", "include unposted", "C:SourceJhatreportsgetICTTransactions.txt");
```

</details><details id="bkmrk-DisplayICTransactions-"><summary>DisplayICTransactions</summary>

<p class="callout info">Display Intercompany Transactions</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--60" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scale Factor</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scale Factor</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Decimal Override</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Decimal Override</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Common Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Common Currency</td></tr><tr><td style="width: 31.6644%;">Display Option</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Display Option

- `Label`
- `Description`
- `Both`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%;">Output File</td><td class="align-center" style="width: 18.1326%;">✓</td><td style="width: 50.203%;">Output File</td></tr></tbody></table>

**Example**

```dart
DisplayICTransactions("Scenario","Year","Period","Scale Factor","Decimal Override","Common Currency","Display Option","Output File");
```

</details><details id="bkmrk-LockICEntity-"><summary>LockICEntity</summary>

<p class="callout info">Lock Intercompany Entity</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--61" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity String</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity String delimited by `,`</td></tr></tbody></table>

**Example**

```dart
LockICEntity("Actual","2000"," Quarter2","EastSales,China");
```

</details><details id="bkmrk-UnLockICEntity-"><summary>UnLockICEntity</summary>

<p class="callout info">Unlock Intercompany Entity</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--62" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity String</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity String delimited by `,`</td></tr></tbody></table>

**Example**

```dart
UnLockICEntity("Actual","2000"," Quarter2"," EastSales,China");
```

</details><details id="bkmrk-EditICTransaction-"><summary>EditICTransaction</summary>

<p class="callout info">Edit Intercompany Transaction</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--63" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">TID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Transaction SUB ID</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">T Sub ID</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">List number which has field name to update</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">List number which has field name to update</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">List number of which has corresponding values</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">List number of which has corresponding values</td></tr></tbody></table>

**Example**

```dart
EditICTransaction("POV","TID"," T Sub ID"," List number wihcih has filed name to update"," List number of which has corresponding values");
```

</details><details id="bkmrk-CreateAutoMatchByIDTemplate-"><summary>CreateAutoMatchByIDTemplate</summary>

<p class="callout info">Create Auto Match By ID Template</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--64" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security Class</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Security Class</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">isPrivate</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">isPrivate</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Overwrite</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Overwrite</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Location</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Location</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Currency</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ID Type</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ID Type</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">IDs</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">IDs</td></tr></tbody></table>

**Example**

```dart
CreateAutoMatchByIDTemplate("name"," Description"," Security Class"," isPrivate"," Overwrite"," Location","POV","  Entity"," ICP"," Currency"," ID Type"," IDs");
```

</details><details id="bkmrk-CreateAutoMatchByAccountTemplate-"><summary>CreateAutoMatchByAccountTemplate</summary>

<p class="callout info">Create Auto Match by Account Template</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--65" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">name</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">name</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Description</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Description</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Security Class</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Security Class</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">isPrivate</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">isPrivate</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Overwrite</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Overwrite</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Location</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Location</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">POV</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">POV</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entity</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Entity</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">ICP</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">ICP</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Currency</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Currency</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Accounts</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Matching Accounts</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Matching Accounts</td></tr></tbody></table>

**Example**

```dart
CreateAutoMatchByAccountTemplate("name"," Description"," Security Class"," isPrivate"," Overwrite"," Location","POV","  Entity"," ICP"," Currency"," Accounts"," Matching Accounts");
```

</details><details id="bkmrk-ListMonitorIntercompany-"><summary>ListMonitorIntercompany</summary>

<p class="callout info">List Monitor Intercompany</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--66" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr></tbody></table>

**Example**

```dart
ListMonitorIntercompany("Actual","2010"," Quarter1","C:SourceJhatreportsgetMonitorIntercompanyTranscations.txt");
```

</details><details id="bkmrk-ListMonitorIntercompanySummary-"><summary>ListMonitorIntercompanySummary</summary>

<p class="callout info">List Monitor Intercompany Cummary</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--67" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Label</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Label</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr></tbody></table>

**Example**

```dart
ListMonitorIntercompanySummary("Actual","2010"," Quarter1","C:SourceJhatreportsgetMonitorIntercompanyTranscations.txt");
```

</details><details id="bkmrk-FilterMonitorIntercompany-"><summary>FilterMonitorIntercompany</summary>

<p class="callout info">Filter Monitor Intercompany</p>

**Input**

<table border="1" id="bkmrk-parameter-mandatory--1" style="height: 815.594px; width: 94.8718%;"><tbody><tr style="height: 29.7969px;"><td style="width: 31.6644%; height: 29.7969px;">**Parameter**</td><td style="width: 18.1326%; height: 29.7969px;">**Mandatory**</td><td style="width: 50.203%; height: 29.7969px;">**Comment**</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Scenario</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Scenario</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Year</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Year</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Period</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Period</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Entities</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">String of Entities delimited by `;`</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Output File</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Output File</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Active</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Active

- `true`
- `false`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Process Status</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Process Status

- `Started`
- `Not Started`

</td></tr><tr style="height: 35.375px;"><td style="width: 31.6644%; height: 35.375px;">Lock Status</td><td class="align-center" style="width: 18.1326%; height: 35.375px;">✓</td><td style="width: 50.203%; height: 35.375px;">Lock Status

- `Lockable`
- `Not Lockable`
- `Locked`

</td></tr></tbody></table>

**Example**

```dart
FilterMonitorIntercompany("Actual","2010"," Quarter1","","A;B;C;","C:SourceJhatreportsgetMonitorIntercompanyTranscations.txt"," ActiveTrue/false"," ProcessStatus"," LockStatus","");
```

</details>
