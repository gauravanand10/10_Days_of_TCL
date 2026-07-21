# Day 4 - Lists

## Overview

Day 4 introduced one of the most frequently used TCL data structures: **Lists**.

Lists allow multiple values to be stored in a single variable, making it easier to manage collections such as RTL files, ports, clocks, cells, nets and timing paths. Most ASIC and FPGA TCL scripts work extensively with lists.

---

# Learning Objectives

After completing Day 4, I can:

- Create lists
- Determine the number of elements in a list
- Access list elements using indexes
- Insert and append elements
- Extract a range of elements
- Convert strings into lists
- Convert lists into strings

---

# Directory Structure

```
Day04_Lists
│
├── README.md
│
├── src
│   ├── list_creation.tcl
│   ├── list_access.tcl
│   ├── list_modification.tcl
│   └── join_split.tcl
│
└── screenshots
```

---

# Source Files

| File | Description |
|------|-------------|
| list_creation.tcl | Creating lists and determining list length |
| list_access.tcl | Accessing list elements and ranges |
| list_modification.tcl | Appending and inserting elements |
| join_split.tcl | Converting between strings and lists |

---

# Running the Programs

Move into the source directory.

```bash
cd src
```

Run any program using

```bash
tclsh list_creation.tcl
```

---

# Creating Lists

Lists can be created using braces.

```tcl
set fruits {Apple Mango Orange Banana}
```

or using the `list` command.

```tcl
set fruits [list Apple Mango Orange Banana]
```

Both methods create the same list.

---

# List Length

The number of elements in a list is obtained using `llength`.

```tcl
llength $fruits
```

Output

```
4
```

---

# Accessing List Elements

Retrieve a single element using `lindex`.

```tcl
lindex $fruits 2
```

Output

```
Orange
```

Indexes begin from **0**.

---

# Accessing Multiple Elements

Retrieve multiple elements using `lrange`.

```tcl
lrange $fruits 1 3
```

Output

```
Mango Orange Banana
```

Unlike many programming languages, both the start and end indexes are included.

---

# Modifying Lists

Append an element to the end.

```tcl
lappend fruits Grapes
```

Insert an element at a specific position.

```tcl
set fruits [linsert $fruits 2 Kiwi]
```

`lappend` modifies the existing list, whereas `linsert` returns a new list.

---

# split

Convert a string into a list.

```tcl
split $sentence
```

This is commonly used when processing report files.

---

# join

Convert a list into a string.

```tcl
join $fruits ", "
```

Output

```
Apple, Mango, Orange, Banana
```

---

# Difference Between List Commands

| Command | Purpose |
|---------|----------|
| list | Create a list |
| llength | Count list elements |
| lindex | Access a single element |
| lappend | Append an element |
| linsert | Insert an element |
| lrange | Retrieve multiple elements |
| split | Convert a string into a list |
| join | Convert a list into a string |

---

# Common Mistakes I Made

## Mistake 1

```tcl
lindex $fruits 10
```

Output

```
(empty string)
```

Reason

The requested index does not exist. `lindex` returns an empty string instead of generating an error.

---

## Mistake 2

```tcl
linsert $fruits 2 Kiwi
```

Reason

`linsert` returns a new list. Store the result back into a variable.

Correct

```tcl
set fruits [linsert $fruits 2 Kiwi]
```

---

## Mistake 3

Confusing `lindex` and `lrange`.

`lindex`

Returns a single element.

`lrange`

Returns multiple elements.

---

# Industry Relevance

Lists are one of the most commonly used data structures in TCL automation.

Typical applications include:

- Managing RTL file lists
- Processing ports
- Iterating through clocks
- Working with timing paths
- Reading report contents
- Batch processing design objects

---

# Interview Questions

1. What is a list in TCL?
2. Difference between `list` and `set`.
3. What does `llength` return?
4. Difference between `lindex` and `lrange`.
5. Difference between `lappend` and `linsert`.
6. What happens if `lindex` accesses an invalid index?
7. Difference between `join` and `split`.
8. Why are lists heavily used in TCL automation scripts?

---

# Key Takeaways

- A list stores multiple ordered elements in a single variable.
- List indexing starts from **0**.
- `llength` returns the number of elements.
- `lindex` accesses a single element.
- `lrange` retrieves multiple elements.
- `lappend` modifies the existing list.
- `linsert` returns a new list.
- `split` converts a string into a list.
- `join` converts a list into a string.

---

## Day 4 Completed

Day 4 introduced list manipulation in TCL, an essential skill for writing automation scripts used in ASIC and FPGA design flows.
