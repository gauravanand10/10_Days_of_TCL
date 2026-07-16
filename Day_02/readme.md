# Day 2 - Expressions and Control Flow

## Overview

Day 2 focused on understanding how TCL evaluates expressions and makes decisions based on conditions.

The primary objective was not only to learn the syntax of arithmetic expressions and conditional statements, but also to understand **how the TCL interpreter processes expressions internally**.

---

# Learning Objectives

After completing Day 2, I can:

- Perform arithmetic using `expr`
- Understand operator precedence
- Differentiate between integer and floating-point division
- Use comparison operators
- Use logical operators
- Compare strings using `eq` and `ne`
- Write conditional statements using `if`, `else`, and `elseif`
- Understand why `expr {}` is the recommended coding style

---

# Directory Structure

```
Day02_Expressions_and_Control_Flow
│
├── README.md
│
├── src
│   ├── expressions.tcl
│   ├── comparison_logical_operators.tcl
│   ├── conditional_statements.tcl
│   └── expr_best_practices.tcl
│
└── screenshots
```

---

# Source Files

| File | Description |
|------|-------------|
| expressions.tcl | Arithmetic expressions, operator precedence, integer vs floating-point division |
| comparison_logical_operators.tcl | Comparison, string comparison and logical operators |
| conditional_statements.tcl | if, else and elseif statements |
| expr_best_practices.tcl | Different ways of using expr and the recommended coding style |

---

# Running the Programs

Move into the source directory.

```bash
cd src
```

Execute any file using

```bash
tclsh expressions.tcl
```

---

# Expressions

Arithmetic in TCL is performed using the `expr` command.

Example

```tcl
expr {10 + 20}
```

Output

```
30
```

---

## Operator Precedence

TCL follows mathematical precedence.

```
()

↓

*

/

%

↓

+

-

↓

Comparison Operators

↓

Logical Operators
```

Example

```tcl
expr {10 + 20 * 5}
```

Output

```
110
```

Example

```tcl
expr {(10 + 20) * 5}
```

Output

```
150
```

Always use parentheses whenever the order of execution is important.

---

## Integer Division

When both operands are integers, TCL performs integer division.

Example

```tcl
expr {20 / 7}
```

Output

```
2
```

The fractional part is discarded.

---

## Floating Point Division

If either operand is a floating-point number, TCL performs floating-point division.

Example

```tcl
expr {20.0 / 7}
```

Output

```
2.857142857...
```

---

# Comparison Operators

Numeric comparison operators.

| Operator | Meaning |
|----------|---------|
| `==` | Equal |
| `!=` | Not Equal |
| `>` | Greater Than |
| `<` | Less Than |
| `>=` | Greater Than or Equal |
| `<=` | Less Than or Equal |

Example

```tcl
expr {10 > 5}
```

Output

```
1
```

TCL returns

```
1 → True

0 → False
```

---

# String Comparison

Strings are compared using

```
eq

ne
```

Example

```tcl
set company NVIDIA

expr {$company eq "NVIDIA"}
```

Output

```
1
```

---

# Logical Operators

| Operator | Meaning |
|----------|---------|
| `&&` | Logical AND |
| `||` | Logical OR |
| `!` | Logical NOT |

Example

```tcl
expr {(10 > 5) && (20 > 15)}
```

Output

```
1
```

---

# Conditional Statements

General Syntax

```tcl
if {condition} {

    commands

}
```

The condition is evaluated first.

If the result is

```
1
```

the block executes.

If the result is

```
0
```

the block is skipped.

---

## if...else

```tcl
if {$marks >= 40} {

    puts "PASS"

} else {

    puts "FAIL"

}
```

Only one block executes.

---

## elseif

```tcl
if {$marks >= 90} {

}

elseif {$marks >= 75} {

}

else {

}
```

Once a condition becomes true, the remaining conditions are not checked.

---

# Why expr Uses Braces

Recommended

```tcl
expr {$x + $y}
```

Also works

```tcl
expr "$x + $y"
```

```tcl
expr $x+$y
```

Reason for using braces

- The expression is passed directly to `expr`.
- `expr` evaluates the complete expression.
- Improves readability.
- Recommended coding style in professional TCL scripts.
- Commonly used in ASIC automation scripts.

---

# Common Mistakes I Made

## Mistake 1

```tcl
company == NVIDIA
```

Error

```
invalid command name "company"
```

Reason

Forgot to use `expr`.

Correct

```tcl
expr {$company eq "NVIDIA"}
```

---

## Mistake 2

```tcl
expr {$company == NVIDIA}
```

Error

```
invalid bareword "NVIDIA"
```

Reason

Strings must be enclosed within double quotes.

---

## Mistake 3

```tcl
expr {company eq NVIDIA}
```

Reason

Forgot `$` before the variable and quotes around the string.

Correct

```tcl
expr {$company eq "NVIDIA"}
```

---

## Mistake 4

```tcl
puts company
```

Output

```
company
```

Reason

Without `$`, TCL treats it as plain text.

---

## Mistake 5

```tcl
puts $companny
```

Error

```
can't read "companny"
```

Reason

Variable name typo.

---

## Mistake 6

```tcl
puts {$company}
```

Output

```
$company
```

Reason

Braces disable variable substitution.

---

## Mistake 7

```tcl
expr {$company eq == "AMD"}
```

Error

```
missing operand
```

Reason

Two comparison operators cannot be used together.

---

## Mistake 8

```tcl
puts "$company'
```

Reason

Started with a double quote and ended with a single quote.

---

# Industry Relevance

The concepts learned today are used extensively in TCL scripts for:

- Synopsys Design Compiler
- Synopsys PrimeTime
- Synopsys ICC2
- Cadence Genus
- Cadence Innovus
- Vivado
- Quartus Prime

Expressions and conditional statements are used for:

- Timing calculations
- Area calculations
- Design checks
- Conditional execution
- Report generation
- Automation scripts

---

# Interview Questions

1. What is `expr`?

2. Why is `expr` required for arithmetic?

3. Explain operator precedence in TCL.

4. Difference between integer division and floating-point division.

5. Difference between `==` and `eq`.

6. Difference between `&&` and `||`.

7. Why does TCL return `1` and `0` instead of `true` and `false`?

8. Explain why `expr {$x+$y}` is preferred over `expr "$x+$y"`.

9. Difference between `if`, `else`, and `elseif`.

10. Why does

```tcl
puts {$company}
```

print

```
$company
```

instead of the variable value?

---

# Key Takeaways

- Arithmetic is performed using `expr`.
- Integer division discards the fractional part.
- Floating-point division requires at least one floating-point operand.
- Numeric comparison uses `==`, while string comparison uses `eq`.
- Logical operators return `1` or `0`.
- `if` executes a block only when the condition evaluates to `1`.
- `expr {}` is the preferred coding style because it is clearer and lets `expr` evaluate the expression directly.
- Understanding how the TCL interpreter evaluates expressions makes it easier to read and debug larger scripts.

---

## Day 2 Completed

Day 2 introduced expressions and control flow, forming the foundation for writing practical TCL scripts used in ASIC and FPGA design automation.
