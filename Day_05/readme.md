# Day 5 - Procedures

## Overview

Day 5 introduced **procedures (`proc`)**, which allow reusable blocks of code to be created. Procedures reduce code duplication, improve readability, and make TCL scripts easier to maintain.

This day also covered procedure arguments, the `return` statement, and variable scope.

---

# Learning Objectives

After completing Day 5, I can:

- Create procedures using `proc`
- Pass arguments to procedures
- Use multiple arguments
- Return values using `return`
- Understand the difference between `puts` and `return`
- Understand local and global variables
- Access global variables using the `global` keyword

---

# Directory Structure

```
Day05_Procedures
│
├── README.md
│
├── src
│   ├── basic_procedure.tcl
│   ├── procedure_arguments.tcl
│   ├── return_statement.tcl
│   └── variable_scope.tcl
│
└── screenshots
```

---

# Source Files

| File | Description |
|------|-------------|
| basic_procedure.tcl | Creating and calling procedures |
| procedure_arguments.tcl | Single and multiple procedure arguments |
| return_statement.tcl | Returning values from procedures |
| variable_scope.tcl | Local and global variables |

---

# Running the Programs

Move into the source directory.

```bash
cd src
```

Run any program using

```bash
tclsh basic_procedure.tcl
```

---

# Creating a Procedure

General Syntax

```tcl
proc procedure_name {arguments} {

    commands

}
```

Example

```tcl
proc greet {} {
    puts "Hello, World!"
}

greet
```

A procedure executes only when it is called.

---

# Procedure Arguments

Arguments allow the same procedure to work with different inputs.

Example

```tcl
proc greet {name} {
    puts "Hello $name"
}

greet Gaurav
```

Multiple arguments

```tcl
proc introduce {name company} {
    puts "$name works at $company"
}

introduce Gaurav NVIDIA
```

---

# Return Statement

A procedure can return a value to the caller.

```tcl
proc add {a b} {
    return [expr {$a + $b}]
}
```

Example

```tcl
puts [expr {[add 10 20] * 5}]
```

Output

```
150
```

---

# puts vs return

| puts | return |
|------|--------|
| Prints the value | Returns the value |
| Used for displaying output | Used for further calculations |
| Cannot be reused inside expressions | Can be reused inside expressions |

---

# Variable Scope

## Local Variables

Variables created inside a procedure exist only within that procedure.

Example

```tcl
proc student {} {

    set name Gaurav

    puts $name
}
```

The variable `name` cannot be accessed outside the procedure.

---

## Global Variables

Variables created outside a procedure belong to the main program.

They can be accessed inside a procedure using

```tcl
global company
```

Example

```tcl
set company NVIDIA

proc display {} {

    global company

    puts $company
}
```

---

# Difference Between Local and Global Variables

| Local Variable | Global Variable |
|---------------|-----------------|
| Exists only inside a procedure | Exists in the main program |
| Destroyed when the procedure finishes | Exists until modified or program ends |
| Private to the procedure | Shared using the `global` keyword |

---

# Common Mistakes I Made

## Mistake 1

Calling a procedure with the wrong number of arguments.

```tcl
add 10
```

Error

```
wrong # args: should be "add a b"
```

---

## Mistake 2

Providing extra arguments.

```tcl
add 10 20 30
```

Error

```
wrong # args: should be "add a b"
```

---

## Mistake 3

Using `puts` instead of `return`.

```tcl
proc add {a b} {
    puts [expr {$a + $b}]
}
```

This prints the value but cannot be used inside another expression.

Correct

```tcl
proc add {a b} {
    return [expr {$a + $b}]
}
```

---

## Mistake 4

Trying to access a local variable outside a procedure.

```tcl
puts $company
```

Error

```
can't read "company": no such variable
```

Reason

The variable exists only inside the procedure unless declared as `global`.

---

# Industry Relevance

Procedures are widely used in TCL automation scripts to organize reusable tasks.

Typical applications include:

- Reading RTL files
- Running synthesis commands
- Generating reports
- Parsing log files
- Timing analysis
- Automating complete ASIC and FPGA design flows

---

# Interview Questions

1. What is a procedure in TCL?
2. Why are procedures required?
3. Difference between `puts` and `return`.
4. Difference between local and global variables.
5. Why is `return` preferred over `puts` for calculations?
6. What happens if a procedure receives fewer arguments than expected?
7. What happens if extra arguments are passed?
8. What does the `global` keyword do?

---

# Key Takeaways

- Procedures help eliminate repetitive code.
- Arguments make procedures reusable.
- `return` sends a value back to the caller.
- `puts` only displays output.
- Local variables exist only within a procedure.
- Global variables can be shared using the `global` keyword.

---

## Day 5 Completed

Day 5 introduced procedures, reusable programming, variable scope, and the `return` statement, forming the foundation for writing modular TCL automation scripts.
