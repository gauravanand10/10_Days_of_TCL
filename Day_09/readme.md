# Day 9: Regular Expressions & Error Handling

## 📖 Overview

Welcome to **Day 9** of the **50 Days of TCL** journey!

In the previous days, you learned the core features of TCL, including variables, operators, loops, lists, procedures, strings, file handling, arrays, and dictionaries. These concepts provide the foundation for writing TCL programs.

However, in real FPGA and ASIC workflows, engineers spend a significant amount of time parsing synthesis reports, timing reports, power reports, and log files. Instead of manually searching through hundreds of lines, TCL scripts use **Regular Expressions (Regex)** to automatically search, extract, and manipulate text.

Along with text processing, robust automation scripts must also handle unexpected situations such as missing files, invalid inputs, or runtime failures. This is achieved using **Error Handling** with `catch` and `error`.

In this chapter, you will learn how to search for patterns, replace text, extract information from reports, and build reliable automation scripts.

---

# 🎯 Learning Objectives

By the end of this day, you will be able to:

- Understand Regular Expressions (Regex)
- Search text using `regexp`
- Replace text using `regsub`
- Work with wildcards and quantifiers
- Use character classes
- Match the beginning and end of strings
- Extract information using capturing groups
- Handle runtime errors using `catch`
- Generate custom errors using `error`
- Build an EDA-style Timing Report Parser

---

# 📂 Directory Structure

```text
Day09_Regex_ErrorHandling
│
├── README.md
├── regex_basics.tcl
├── regex_operations.tcl
├── error_handling.tcl
└── report_parser.tcl
```

---

# 📄 Files Description

## 1. regex_basics.tcl

Introduces the fundamentals of Regular Expressions using the `regexp` command.

**Topics Covered**

- Pattern Matching
- Return Values
- Searching for Text

---

## 2. regex_operations.tcl

Explores advanced Regular Expression concepts.

**Topics Covered**

- Wildcards
- Quantifiers
- Character Classes
- Anchors
- Capturing Groups
- Text Replacement using `regsub`

---

## 3. error_handling.tcl

Introduces runtime error handling in TCL.

**Topics Covered**

- `catch`
- `error`
- Handling Missing Files
- Runtime Exception Handling

---

## 4. report_parser.tcl

Mini project demonstrating a simple EDA Timing Report Parser.

**Topics Covered**

- File Reading
- Regular Expressions
- Capturing Groups
- Error Handling
- Report Automation

---

# What are Regular Expressions?

A **Regular Expression (Regex)** is a pattern used to search, match, and manipulate text.

Instead of manually searching through reports, a regex allows a program to automatically locate useful information.

Example report line:

```text
Slack (MET) : 0.245
```

Using Regular Expressions, the value

```text
0.245
```

can be extracted automatically.

Regex is widely used in automation because most EDA tools generate plain text reports.

---

# regexp Command

The `regexp` command searches a string for a pattern.

## Syntax

```tcl
regexp pattern string
```

## Return Values

| Return Value | Description |
|--------------|-------------|
| 1 | Pattern Found |
| 0 | Pattern Not Found |

### Example

```tcl
set text "RTL Design Automation"

puts [regexp "RTL" $text]
```

Output

```text
1
```

---

# regsub Command

The `regsub` command replaces matching text.

## Syntax

```tcl
regsub pattern string replacement variable
```

### Example

```tcl
set module "uart_tx"

regsub "_" $module "-" result

puts $result
```

Output

```text
uart-tx
```

---

# Wildcards

| Symbol | Meaning |
|---------|---------|
| `.` | Matches any single character |

Example

```tcl
regexp "c.t" "cat"
```

Matches

- cat
- cot
- cut
- c9t

---

# Quantifiers

## *

Matches **Zero or More** occurrences.

Pattern

```text
ab*c
```

Matches

- ac
- abc
- abbbc

---

## +

Matches **One or More** occurrences.

Pattern

```text
ab+c
```

Matches

- abc
- abbbc

Does Not Match

- ac

---

## ?

Matches **Zero or One** occurrence.

Pattern

```text
colou?r
```

Matches

- color
- colour

---

# Character Classes

Character classes define a set or range of characters.

| Pattern | Matches |
|----------|----------|
| `[0-9]` | Digits |
| `[A-Z]` | Uppercase Letters |
| `[a-z]` | Lowercase Letters |
| `[A-Za-z]` | Alphabets |
| `[A-Za-z0-9]` | Alphanumeric Characters |

Example

```tcl
regexp {[0-9]+} "12345"
```

Output

```text
1
```

---

# Anchors

## Beginning (^)

```tcl
regexp {^RTL} "RTL Design"
```

Matches only if the string starts with **RTL**.

---

## End ($)

```tcl
regexp {Design$} "RTL Design"
```

Matches only if the string ends with **Design**.

---

# Capturing Groups

Capturing groups allow extraction of matched values.

Example

```tcl
set report "Slack : 0.245"

regexp {Slack : ([0-9.]+)} $report -> slack

puts $slack
```

Output

```text
0.245
```

---

# Error Handling

Automation scripts should not terminate unexpectedly.

Instead, they should detect the error, report it, and continue execution whenever possible.

---

# catch Command

Executes commands while safely handling runtime errors.

## Syntax

```tcl
catch {commands}
```

## Return Values

| Return Value | Meaning |
|--------------|---------|
| 0 | Success |
| 1 | Error |

### Example

```tcl
if {[catch {

    set fp [open "report.txt" r]

} err]} {

    puts "Error : $err"

}
```

---

# error Command

Generates a custom runtime error.

Example

```tcl
if {$age < 0} {

    error "Invalid Age"

}
```

---

# Mini Project

## EDA Timing Report Parser

The final project reads a timing report and automatically extracts:

- Design Name
- Startpoint
- Endpoint
- Slack
- Clock Frequency
- Total Cell Area
- Cell Count
- Timing Status

using Regular Expressions while safely handling missing files using `catch`.

This demonstrates a simplified version of report parsing commonly performed in FPGA and ASIC automation workflows.

---

# Command Reference

| Command | Description |
|----------|-------------|
| `regexp` | Searches for a pattern |
| `regsub` | Replaces matching text |
| `catch` | Handles runtime errors |
| `error` | Generates custom errors |

---

# Regex Cheat Sheet

| Pattern | Meaning |
|----------|---------|
| `.` | Any Character |
| `*` | Zero or More |
| `+` | One or More |
| `?` | Optional Character |
| `[]` | Character Class |
| `^` | Beginning of String |
| `$` | End of String |
| `()` | Capturing Group |

---

# Industry Applications

Regular Expressions are commonly used for:

- Parsing Timing Reports
- Parsing Synthesis Reports
- Extracting WNS/TNS
- Extracting Cell Area
- Parsing Power Reports
- Parsing Log Files
- Automating Report Generation
- Verifying Tool Outputs

Error handling ensures automation scripts remain reliable even when files or inputs are missing.

---

# Best Practices

- Use meaningful regex patterns.
- Always validate file operations using `catch`.
- Use capturing groups to extract only the required information.
- Close files after processing.
- Generate descriptive custom errors.
- Keep regex patterns simple and readable.

---

# Common Interview Questions

### 1. What is a Regular Expression?

A pattern used to search, match, or manipulate text.

---

### 2. What is the difference between `regexp` and `regsub`?

- `regexp` searches for matching patterns.
- `regsub` replaces matching text.

---

### 3. What does `catch` return?

- `0` for successful execution.
- `1` if an error occurs.

---

### 4. Why are capturing groups used?

Capturing groups allow extraction of specific parts of matched text.

---

### 5. Where are Regular Expressions used in VLSI?

- Timing Reports
- Synthesis Reports
- Power Reports
- Log Files
- Automation Scripts

---

# Key Takeaways

- Learned text pattern matching using `regexp`.
- Learned text replacement using `regsub`.
- Understood wildcards, quantifiers, character classes, anchors, and capturing groups.
- Learned robust error handling using `catch` and `error`.
- Built a practical EDA Timing Report Parser using TCL.

---

# 📅 Day 9 Summary

- ✅ Regular Expressions (`regexp`)
- ✅ Text Replacement (`regsub`)
- ✅ Wildcards & Quantifiers
- ✅ Character Classes
- ✅ Anchors (`^`, `$`)
- ✅ Capturing Groups
- ✅ Error Handling (`catch`, `error`)
- ✅ Practical EDA Report Parser

---

## ⏭️ Next Day

**Day 10 – File System Commands, `source`, Packages & Final TCL Automation Project**

Congratulations! You are now one step away from completing the **TCL Fundamentals** section of the **50 Days of TCL** journey.
