# 10 Days of TCL for ASIC Design

A practical TCL learning and implementation repository focused on **ASIC design, EDA tools, and flow automation**.

This repository covers TCL from basic language constructs to writing scripts that can be used with EDA tools and ASIC design flows.

The objective was to understand both **TCL programming** and its practical usage in an EDA environment.

---

## Contents

| Day    | Topic                             |
| ------ | --------------------------------- |
| Day 01 | Variables & Variable Substitution |
| Day 02 | Expressions & Operators           |
| Day 03 | Conditional Statements            |
| Day 04 | Loops                             |
| Day 05 | Lists & String Manipulation       |
| Day 06 | Procedures                        |
| Day 07 | File Handling                     |
| Day 08 | Linux & System Commands           |
| Day 09 | ASIC Automation                   |
| Day 10 | Final TCL Project                 |

---

## Repository Structure

```text
10-Days-of-TCL-for-ASIC/
│
├── README.md
│
├── Day01_Variables_and_Substitution/
├── Day02_Expressions_and_Operators/
├── Day03_Conditions/
├── Day04_Loops/
├── Day05_Lists_and_Strings/
├── Day06_Procedures/
├── Day07_File_Handling/
├── Day08_System_Commands/
├── Day09_ASIC_Automation/
└── Day10_Final_Project/
```

Each directory contains the TCL concepts, examples, exercises, and scripts implemented for that day.

---

## TCL Topics Covered

### Language Fundamentals

* Variables
* Variable substitution
* Command substitution
* Expressions
* Operators
* Strings
* Comments
* TCL syntax and evaluation

### Programming

* `if / elseif / else`
* `for`
* `while`
* `foreach`
* Lists
* String operations
* Procedures
* Arguments
* Return values
* Scope

### File & System Handling

* File creation and reading
* File writing and appending
* File existence checks
* Directory management
* Parsing text files
* Executing Linux commands
* Handling command output

---

## TCL in EDA

The later part of the repository focuses on how TCL is used inside EDA tools.

Examples include concepts used for:

* Design setup
* RTL file management
* Library configuration
* Synthesis scripting
* Timing analysis
* Report generation
* Flow automation
* Tool configuration

The same TCL concepts learned in the first few days are applied to EDA-oriented scripts.

---

## EDA Tools

The scripts and examples are intended to be applicable to commonly used TCL-based EDA environments, including:

* Cadence Genus
* Cadence Innovus
* Cadence Tempus
* Synopsys Design Compiler
* Synopsys PrimeTime
* Synopsys ICC2
* Xilinx Vivado

---

## Final Project

The final project combines the TCL concepts covered throughout the repository into a small ASIC-oriented automation flow.

The flow includes tasks such as:

```text
RTL / Input Files
       │
       ▼
File & Directory Checks
       │
       ▼
Flow Configuration
       │
       ▼
Command Execution
       │
       ▼
Log / Report Generation
       │
       ▼
Final Flow Summary
```

The project is intentionally kept simple and focuses on understanding the scripting concepts and their application to an ASIC workflow.

---

## Environment

```text
OS       : Ubuntu Linux
Language : TCL
Shell    : tclsh
Editor   : VS Code
Version  : Git
```

EDA-specific scripts can be executed within the corresponding tool environment.

---

## References

The repository is based on TCL language fundamentals and practical scripting patterns commonly used in EDA environments.

---

## Status

**Completed — 10/10 Days**
