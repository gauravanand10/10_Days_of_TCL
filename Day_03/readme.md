# Day 3 - Loops

## Overview

Day 3 introduced looping constructs in TCL. Loops are used to execute a block of code repeatedly without writing the same statements multiple times.

This day focused on understanding how loops execute, when to use each loop, and how to control loop execution using `break` and `continue`.

---

# Learning Objectives

After completing Day 3, I can:

- Understand the purpose of loops
- Write `while` loops
- Write `for` loops
- Write `foreach` loops
- Use the `incr` command
- Understand the difference between `while`, `for`, and `foreach`
- Control loop execution using `break` and `continue`

---

# Directory Structure

```
Day03_Loops
│
├── README.md
│
├── src
│   ├── while_loop.tcl
│   ├── for_loop.tcl
│   ├── foreach_loop.tcl
│   └── loop_control.tcl
│
└── screenshots
```

---

# Source Files

| File | Description |
|------|-------------|
| while_loop.tcl | Demonstrates the `while` loop |
| for_loop.tcl | Demonstrates the `for` loop and `incr` |
| foreach_loop.tcl | Demonstrates the `foreach` loop using a list |
| loop_control.tcl | Demonstrates `break` and `continue` |

---

# Running the Programs

Move into the source directory.

```bash
cd src
```

Execute any file using

```bash
tclsh while_loop.tcl
```

---

# Why Do We Need Loops?

Without loops

```tcl
puts 1
puts 2
puts 3
puts 4
puts 5
```

Loops eliminate repetitive code by executing the same block multiple times.

---

# while Loop

General Syntax

```tcl
while {condition} {

    commands

}
```

A `while` loop continues executing as long as the condition evaluates to `1`.

Example

```tcl
set i 1

while {$i <= 5} {
    puts $i
    incr i
}
```

Output

```
1
2
3
4
5
```

---

## Components of a while Loop

Every `while` loop has three important parts.

### Initialization

```tcl
set i 1
```

Starting value.

### Condition

```tcl
$i <= 5
```

Determines whether the loop should continue.

### Update

```tcl
incr i
```

Moves the loop to the next iteration.

If the update is missing, the loop may never terminate.

---

# for Loop

General Syntax

```tcl
for {initialization} {condition} {update} {

    commands

}
```

Example

```tcl
for {set i 1} {$i <= 5} {incr i} {
    puts $i
}
```

Output

```
1
2
3
4
5
```

A `for` loop combines initialization, condition and update into a single statement.

---

# incr Command

The `incr` command increments the value of a variable.

Example

```tcl
incr i
```

Equivalent to

```tcl
set i [expr {$i + 1}]
```

It can also increment by a custom value.

Example

```tcl
incr i 2
```

Output sequence

```
2
4
6
8
10
```

---

# foreach Loop

General Syntax

```tcl
foreach variable list {

    commands

}
```

Unlike `while` and `for`, `foreach` does not require a counter.

Example

```tcl
set fruits {Apple Mango Orange Banana}

foreach fruit $fruits {
    puts $fruit
}
```

Output

```
Apple
Mango
Orange
Banana
```

`foreach` is commonly used to iterate through lists.

---

# break

The `break` statement immediately terminates the loop.

Example

```tcl
foreach tool {Vivado Quartus Synopsys Cadence} {

    if {$tool eq "Synopsys"} {
        break
    }

    puts $tool
}
```

Output

```
Vivado
Quartus
```

The loop stops as soon as `Synopsys` is encountered.

---

# continue

The `continue` statement skips the current iteration and proceeds to the next iteration.

Example

```tcl
foreach tool {Vivado Quartus Synopsys Cadence} {

    if {$tool eq "Synopsys"} {
        continue
    }

    puts $tool
}
```

Output

```
Vivado
Quartus
Cadence
```

The current iteration is skipped, but the loop continues executing.

---

# Difference Between Loops

| Loop | Best Use |
|------|----------|
| while | When the number of iterations is unknown |
| for | When the number of iterations is known |
| foreach | When iterating over a list or collection |

---

# Difference Between break and continue

| break | continue |
|--------|----------|
| Terminates the loop immediately | Skips only the current iteration |
| Remaining iterations are not executed | Loop continues with the next iteration |

---

# Common Mistakes I Made

## Mistake 1

```tcl
for {set i 1}{$i <= 5}{incr i}{
```

Error

```
extra characters after close-brace
```

Reason

Forgot to separate the `for` arguments with spaces.

Correct

```tcl
for {set i 1} {$i <= 5} {incr i} {
```

---

## Mistake 2

```tcl
incr 1
```

Reason

`incr` expects a variable name, not a number.

Correct

```tcl
incr i
```

---

## Mistake 3

```tcl
for {set i 1} {$i/2 == 0} {incr i}
```

Reason

The loop condition determines whether the loop should continue, not whether a number is even.

Correct approach

```tcl
for {set i 2} {$i <= 10} {incr i 2} {
    puts $i
}
```

---

# Industry Relevance

Loops are heavily used in ASIC and FPGA automation scripts.

Typical applications include:

- Reading multiple RTL files
- Iterating through ports
- Processing timing reports
- Traversing cells and nets
- Generating reports
- Running repetitive EDA commands

Among all loops, `foreach` is the most commonly used because EDA tools frequently operate on collections of objects.

---

# Interview Questions

1. Why are loops required?

2. Explain the difference between `while` and `for`.

3. When should `foreach` be used?

4. What does the `incr` command do?

5. Difference between `break` and `continue`.

6. Why can a `while` loop become an infinite loop?

7. Why is `foreach` more commonly used in ASIC TCL scripts?

8. Can a `while` loop execute zero times?

9. What are the three components of a `for` loop?

10. Which loop is most commonly used in Design Compiler or PrimeTime scripts, and why?

---

# Key Takeaways

- Loops eliminate repetitive code.
- A `while` loop executes until its condition becomes false.
- A `for` loop combines initialization, condition and update into one statement.
- `incr` provides a concise way to increment variables.
- `foreach` iterates through a list without requiring a counter.
- `break` terminates the loop immediately.
- `continue` skips only the current iteration.
- `foreach` is the preferred loop when working with collections in TCL automation scripts.

---

## Day 3 Completed

Day 3 introduced looping constructs and loop control statements, providing the foundation for writing scalable TCL scripts used in ASIC and FPGA design automation.
