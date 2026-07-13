# Day 1 - Variables and Variable Substitution

## 📖 Overview

Day 1 marks the beginning of my **10 Days of TCL for ASIC** learning journey.

The objective of this day was to understand the fundamental building blocks of TCL programming, including variables, variable substitution, printing output, arithmetic operations, command substitution, and writing clean TCL scripts.

Rather than memorizing syntax, the focus was on understanding **how TCL evaluates every command internally**.

---

# 🎯 Learning Objectives

After completing Day 1, I can:

- Understand the purpose of TCL
- Create and read variables
- Print strings and variables
- Perform arithmetic using `expr`
- Understand command substitution
- Differentiate between Quotes and Braces
- Read simple TCL scripts
- Write clean and readable TCL programs

---

# 📂 Directory Structure

```
Day01_Variables_and_Variable_Substitution
│
├── README.md
│
├── src
│   ├── basics.tcl
│   ├── puts_examples.tcl
│   └── student_info.tcl
│
└── screenshots
```

---

# 📚 Topics Covered

- What is TCL?
- Variables
- `set`
- Reading Variables
- Variable Substitution (`$`)
- `puts`
- Quotes (`" "`)
- Braces (`{ }`)
- Command Substitution (`[]`)
- Arithmetic using `expr`
- Boolean Expressions
- Comments
- Writing Professional TCL Code

---

# 📄 Source Files

| File | Description |
|------|-------------|
| `basics.tcl` | Covers all Day 1 concepts with examples |
| `puts_examples.tcl` | Demonstrates different usages of the `puts` command |
| `student_info.tcl` | Mini project implementing the concepts learned |

---

# ▶️ Running the Programs

Navigate to the source directory.

```bash
cd src
```

Execute any script using:

```bash
tclsh basics.tcl
```

```bash
tclsh puts_examples.tcl
```

```bash
tclsh student_info.tcl
```

---

# 📘 Understanding the Concepts

## Variables

Variables are created using the `set` command.

```tcl
set name "Gaurav"
```

The value stored in a variable can be accessed using the `$` operator.

```tcl
puts $name
```

---

## Variable Substitution

Whenever TCL encounters `$variable`, it replaces it with the value stored inside that variable before executing the command.

Example:

```tcl
set tool Vivado

puts $tool
```

Internally, TCL evaluates the command as:

```tcl
puts Vivado
```

---

## Quotes vs Braces

### Double Quotes

```tcl
puts "Current Tool : $tool"
```

Variables inside double quotes are substituted.

Output:

```
Current Tool : Vivado
```

---

### Curly Braces

```tcl
puts {Current Tool : $tool}
```

Variables inside braces are **not substituted**.

Output:

```
Current Tool : $tool
```

---

## Arithmetic using expr

Arithmetic operations in TCL are performed using the `expr` command.

```tcl
puts [expr {10+20}]
```

Output

```
30
```

Without `expr`, TCL treats the expression as ordinary text.

---

## Command Substitution

Square brackets (`[]`) tell TCL to execute the enclosed command first.

Example:

```tcl
puts [expr {10+20}]
```

Execution sequence:

1. Execute `expr {10+20}`
2. Result becomes `30`
3. Execute

```tcl
puts 30
```

4. Print

```
30
```

---

# 🧠 How TCL Thinks

Consider the following statement:

```tcl
puts [expr {$x+$y}]
```

TCL executes it in the following order:

```
Read the command

↓

Execute expr

↓

Replace [] with returned value

↓

Execute puts

↓

Display the output
```

Understanding this evaluation order makes reading larger TCL scripts much easier.

---

# 🚨 Common Beginner Mistakes

## Mistake 1 — Forgetting Variable Substitution

### Incorrect

```tcl
puts tool
```

Output

```
tool
```

Reason

`tool` is treated as plain text.

### Correct

```tcl
puts $tool
```

---

## Mistake 2 — Expecting Braces to Perform Substitution

### Incorrect

```tcl
puts {$tool}
```

Output

```
$tool
```

Reason

Braces disable variable substitution.

### Correct

```tcl
puts "$tool"
```

---

## Mistake 3 — Printing Multiple Words Without Quotes

### Incorrect

```tcl
puts Hello World
```

Error

```
wrong # args
```

Reason

TCL interprets this as multiple arguments.

### Correct

```tcl
puts "Hello World"
```

---

## Mistake 4 — Performing Arithmetic Without expr

### Incorrect

```tcl
puts 10+20
```

Output

```
10+20
```

Reason

TCL prints the text exactly as written.

### Correct

```tcl
puts [expr {10+20}]
```

---

## Mistake 5 — Reading an Undefined Variable

### Incorrect

```tcl
set x
```

Error

```
can't read "x": no such variable
```

Reason

The variable has not been created.

### Correct

```tcl
set x 10

puts $x
```

---

# 💼 Industry Relevance

The concepts introduced today form the foundation of almost every TCL automation script used in EDA tools such as:

- Synopsys Design Compiler
- Synopsys PrimeTime
- Synopsys IC Compiler II (ICC2)
- Cadence Genus
- Cadence Innovus
- Xilinx Vivado
- Intel Quartus Prime

Before learning synthesis or physical design scripting, understanding variables, substitution, expressions, and command evaluation is essential.

---

# 🎯 Interview Questions

1. What is TCL?

2. Why is TCL widely used in ASIC Design?

3. What is the difference between

```tcl
set x
```

and

```tcl
set x 10
```

4. What is the difference between

```tcl
puts x
```

and

```tcl
puts $x
```

5. Explain the difference between Quotes and Braces.

6. Why is `expr` required?

7. What are square brackets (`[]`) used for?

8. Explain the execution flow of

```tcl
puts [expr {$x+$y}]
```

9. Why does

```tcl
puts Hello World
```

generate an error?

---

# 📝 Key Takeaways

- Variables in TCL are created using `set`.
- Variable values are accessed using `$`.
- `puts` prints text, variables, or command results.
- Arithmetic is performed using `expr`.
- Double quotes allow variable substitution.
- Braces prevent variable substitution.
- Square brackets execute commands before the outer command.
- Understanding TCL's evaluation order is the key to reading complex scripts.
- Writing clean and well-commented scripts improves readability and maintainability.

---

## ✅ Day 1 Completed

Day 1 established the fundamental concepts required for writing TCL programs. These concepts will be used throughout the remaining days of this learning journey, eventually leading to TCL scripting for ASIC and FPGA design automation.
