# Day 10: File System Commands, `source`, Packages & Final Automation Project

## 📖 Overview

Congratulations on reaching the final day of the **50 Days of TCL** journey!

Over the previous nine days, you learned the core features of TCL including variables, operators, loops, lists, procedures, strings, file handling, arrays, dictionaries, regular expressions, and error handling.

In this final chapter, you'll learn how professional TCL automation scripts are organized. You'll explore file system operations, reusable utility procedures, the `source` command for modular programming, basic package management, and finally build a complete report automation project that combines concepts from the entire course.

This chapter closely resembles how TCL is used in FPGA and ASIC design environments for automation tasks.

---

# 🎯 Learning Objectives

By the end of this day, you will be able to:

- Work with file system commands
- Create reusable utility procedures
- Reuse code using the `source` command
- Understand TCL packages
- Load packages using `package require`
- Query installed packages
- Build a complete report automation script
- Combine all concepts learned throughout the course

---

# 📂 Directory Structure

```text
Day10_Final_Automation
│
├── README.md
├── filesystem_commands.tcl
├── utility_functions.tcl
├── source_demo.tcl
├── package_demo.tcl
└── design_report_automation.tcl
```

---

# 📄 Files Description

## 1. filesystem_commands.tcl

Introduces commonly used file system commands in TCL.

**Topics Covered**

- Current Working Directory (`pwd`)
- File Existence
- File and Directory Checks
- Creating Directories
- Copying Files
- Renaming Files
- Deleting Files
- Listing Files using `glob`

This file demonstrates how TCL interacts with the operating system.

---

## 2. utility_functions.tcl

Creates reusable procedures that can be used by multiple TCL scripts.

**Topics Covered**

- Custom Procedures
- Formatted Output
- Success and Error Messages
- File Checking
- Listing TCL Files

This file acts as a utility library for the remaining scripts.

---

## 3. source_demo.tcl

Demonstrates modular programming using the `source` command.

**Topics Covered**

- Loading External TCL Files
- Calling Imported Procedures
- Code Reusability
- Modular Script Organization

This is how large FPGA and ASIC automation projects organize shared functionality.

---

## 4. package_demo.tcl

Introduces TCL package management.

**Topics Covered**

- `package require`
- `package names`
- `package provide`
- Installed Packages
- TCL Version Information

This file provides an introduction to using built-in TCL packages.

---

## 5. design_report_automation.tcl

Final automation project that combines concepts from the entire course.

**Topics Covered**

- File Checking
- File Reading
- Error Handling
- Regular Expressions
- Report Parsing
- Formatted Output
- Utility Procedures

The script reads a timing report and automatically extracts useful design information.

---

# File System Commands

TCL provides several built-in commands for interacting with files and directories.

These commands are widely used in automation scripts for creating directories, checking file existence, copying reports, and managing project files.

---

## pwd

Displays the current working directory.

Example

```tcl
puts [pwd]
```

---

## file exists

Checks whether a file or directory exists.

Example

```tcl
file exists README.md
```

Returns

- `1` → Exists
- `0` → Does Not Exist

---

## file isfile

Checks whether the specified path is a file.

Example

```tcl
file isfile README.md
```

---

## file isdirectory

Checks whether the specified path is a directory.

Example

```tcl
file isdirectory reports
```

---

## file mkdir

Creates a directory.

Example

```tcl
file mkdir reports
```

---

## file copy

Copies a file.

Example

```tcl
file copy source.txt backup.txt
```

---

## file rename

Renames a file.

Example

```tcl
file rename report.txt report_old.txt
```

---

## file delete

Deletes a file.

Example

```tcl
file delete report.txt
```

---

## glob

Returns all files matching a pattern.

Example

```tcl
glob *.tcl
```

---

# Utility Procedures

Instead of writing the same code repeatedly, TCL allows you to organize reusable procedures in a separate file.

Examples include:

- Printing banners
- Printing separators
- Checking files
- Displaying success messages
- Displaying error messages

These procedures are then reused throughout multiple automation scripts.

---

# source Command

The `source` command executes another TCL script in the current interpreter.

## Syntax

```tcl
source utility_functions.tcl
```

Once sourced, all procedures defined in the file become available.

For example,

```tcl
banner "RTL Automation"

check_file "README.md"

list_tcl_files
```

can be called directly after sourcing the utility file.

This modular programming style is widely used in professional FPGA and ASIC projects.

---

# TCL Packages

Packages extend the functionality of TCL by providing reusable libraries.

---

## package require

Loads a package.

Example

```tcl
package require Tcl 8.6
```

---

## package names

Displays all available packages.

Example

```tcl
package names
```

---

## package provide

Displays the version of a loaded package.

Example

```tcl
package provide Tcl
```

---

# Final Automation Project

The final project demonstrates how multiple TCL concepts can be combined into a practical automation script.

The script performs the following tasks:

- Checks whether the timing report exists
- Opens the report
- Handles runtime errors
- Reads the report line by line
- Extracts design information using Regular Expressions
- Displays a formatted summary

The extracted information includes:

- Design Name
- Startpoint
- Endpoint
- Slack
- Clock Frequency
- Total Cell Area
- Cell Count
- Timing Status

This closely resembles report parsing performed in FPGA and ASIC automation.

---

# Command Reference

| Command | Description |
|----------|-------------|
| `pwd` | Current Working Directory |
| `file exists` | Checks file existence |
| `file isfile` | Checks whether path is a file |
| `file isdirectory` | Checks whether path is a directory |
| `file mkdir` | Creates a directory |
| `file copy` | Copies a file |
| `file rename` | Renames a file |
| `file delete` | Deletes a file |
| `glob` | Lists matching files |
| `source` | Loads another TCL script |
| `package require` | Loads a package |
| `package names` | Lists installed packages |
| `package provide` | Displays package version |

---

# Concepts Covered Throughout the Final Project

| Concept | Used |
|----------|------|
| Variables | ✅ |
| Expressions | ✅ |
| Procedures | ✅ |
| Strings | ✅ |
| File Handling | ✅ |
| File System Commands | ✅ |
| Regular Expressions | ✅ |
| Error Handling | ✅ |
| `source` | ✅ |
| Packages | ✅ |
| Formatted Output | ✅ |

---

# Industry Applications

The concepts learned in this chapter are commonly used in:

- Vivado Automation
- Quartus Prime
- Synopsys Design Compiler
- PrimeTime
- Cadence Genus
- Cadence Innovus
- ICC2
- Questa/ModelSim
- Report Generation
- Timing Analysis
- Synthesis Automation

---

# Best Practices

- Organize reusable procedures in separate files.
- Use `source` instead of duplicating code.
- Always check whether files exist before opening them.
- Handle runtime errors using `catch`.
- Keep automation scripts modular and readable.
- Use formatted output for better readability.

---

# Common Interview Questions

### 1. What does `source` do in TCL?

It executes another TCL script in the current interpreter, making its procedures and variables available.

---

### 2. What is the purpose of `glob`?

It returns files matching a specified pattern.

---

### 3. Why are utility procedures useful?

They eliminate duplicate code and improve script maintainability.

---

### 4. What is a TCL package?

A package is a reusable library that extends TCL with additional functionality.

---

### 5. Why are modular scripts preferred?

They are easier to maintain, debug, and reuse across multiple projects.

---

# Key Takeaways

- Learned file system operations.
- Created reusable utility procedures.
- Understood modular programming using `source`.
- Learned the basics of TCL package management.
- Built a complete report automation script.
- Combined concepts learned throughout the entire TCL course.

---

# 🎉 Course Completion

Congratulations!

You have successfully completed the **TCL Fundamentals** section of the **50 Days of TCL** journey.

Throughout these ten days, you have learned:

- ✅ Variables & Data Types
- ✅ Operators & Expressions
- ✅ Loops
- ✅ Lists
- ✅ Procedures
- ✅ String Handling
- ✅ File Handling
- ✅ Arrays
- ✅ Dictionaries
- ✅ Regular Expressions
- ✅ Error Handling
- ✅ File System Commands
- ✅ Modular Programming using `source`
- ✅ Basic Package Management
- ✅ Practical Automation Project

These concepts form the foundation of TCL scripting used in FPGA and ASIC design flows, including automation for synthesis, timing analysis, report generation, and design management.

Continue practicing by writing automation scripts for real EDA tools such as Vivado, Quartus Prime, Synopsys Design Compiler, PrimeTime, Cadence Genus, Innovus, ICC2, and Questa/ModelSim.

---

## 🚀 Next Phase

With the TCL fundamentals complete, you are now ready to explore TCL scripting inside FPGA and ASIC tools, where these concepts are applied to automate synthesis, implementation, simulation, report generation, and complete design flows.
