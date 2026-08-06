# Day 8: Arrays & Dictionaries

## 📖 Overview

Welcome to **Day 8** of the **50 Days of TCL** journey!

In the previous days, you learned variables, operators, loops, lists, procedures, strings, and file handling. While these concepts are enough to build simple TCL programs, real-world automation scripts often need to organize and manage large amounts of data efficiently.

TCL provides two powerful data structures for this purpose:

- **Arrays** – Store values using named indices.
- **Dictionaries** – Store data as key-value pairs.

These data structures are widely used in FPGA and ASIC automation scripts for storing module information, timing results, synthesis statistics, configuration parameters, and much more.

In this chapter, you'll learn how to create arrays, access their elements, retrieve all keys and values, check if an array exists, remove elements, and use dictionaries to organize structured data. You'll also build a simple **Module Database** project that demonstrates how dictionaries can be used in practical automation tasks.

---

# 🎯 Learning Objectives

By the end of this day, you will be able to:

- Understand Arrays in TCL
- Create and initialize arrays
- Access array elements
- Retrieve array names and values
- Check if an array exists
- Remove individual elements or entire arrays
- Understand Dictionaries
- Create and update dictionaries
- Retrieve keys and values
- Iterate through dictionaries
- Build a simple Module Database using dictionaries

---

# 📂 Directory Structure

```text
Day08_Arrays_Dictionaries
│
├── README.md
├── array_basics.tcl
├── array_names.tcl
├── array_get.tcl
├── array_exists.tcl
├── array_unset.tcl
├── array_unset_element.tcl
├── dictionary_basics.tcl
└── module_database.tcl
```

---

# 📄 Files Description

## 1. array_basics.tcl

Introduces the concept of arrays in TCL.

Topics Covered:

- Creating Arrays
- Initializing Arrays
- Accessing Individual Elements

This file serves as the starting point for understanding indexed data storage in TCL.

---

## 2. array_names.tcl

Demonstrates how to retrieve all the indices (keys) present in an array.

Topics Covered:

- `array names`

Useful when iterating over arrays whose indices are not known beforehand.

---

## 3. array_get.tcl

Shows how to retrieve all key-value pairs stored inside an array.

Topics Covered:

- `array get`

This command is particularly useful when displaying or processing the complete contents of an array.

---

## 4. array_exists.tcl

Explains how to determine whether an array exists before accessing it.

Topics Covered:

- `array exists`

Checking for array existence helps avoid runtime errors in automation scripts.

---

## 5. array_unset.tcl

Demonstrates how to delete an entire array from memory.

Topics Covered:

- `unset`

Removing unused arrays helps free memory and keeps scripts organized.

---

## 6. array_unset_element.tcl

Shows how to remove only a specific element while keeping the remaining array intact.

Topics Covered:

- `unset array(index)`

Useful when updating datasets dynamically.

---

## 7. dictionary_basics.tcl

Introduces Dictionaries in TCL.

Topics Covered:

- Creating Dictionaries
- Accessing Values
- Adding New Entries
- Retrieving Keys
- Retrieving Values
- Checking Key Existence

Dictionaries provide a cleaner and more structured way to manage related information compared to arrays.

---

## 8. module_database.tcl

Mini project demonstrating the practical use of dictionaries.

Topics Covered:

- Dictionary Creation
- Storing Module Information
- Iterating using `dict for`
- Displaying Module Data

This project simulates a simple RTL module database where module names are associated with properties such as area.

---

# Arrays in TCL

An **Array** is a collection of variables indexed by names instead of numeric positions.

Unlike lists, arrays allow direct access to values using meaningful indices.

Example:

```tcl
array set marks {
    Rahul 85
    Amit 90
    Neha 76
}
```

Accessing an element:

```tcl
puts $marks(Rahul)
```

Output

```text
85
```

---

# Array Commands

## array set

Creates and initializes an array.

### Syntax

```tcl
array set arrayName {
    key value
    key value
}
```

---

## array names

Returns all indices of an array.

Example

```tcl
array names marks
```

---

## array get

Returns every key-value pair stored inside an array.

Example

```tcl
array get marks
```

---

## array exists

Checks whether an array exists.

Example

```tcl
array exists marks
```

Returns

- `1` → Exists
- `0` → Does Not Exist

---

## unset

Deletes an entire array.

Example

```tcl
unset marks
```

---

## unset array(index)

Deletes only a single element.

Example

```tcl
unset marks(Rahul)
```

---

# Dictionaries in TCL

A **Dictionary** is a key-value data structure designed for storing related information.

Unlike arrays, dictionaries are stored as a single value and provide a cleaner interface for managing structured data.

Example

```tcl
set marks [dict create Rahul 85 Amit 90 Neha 76]
```

---

# Dictionary Commands

## dict create

Creates a new dictionary.

Example

```tcl
dict create Rahul 85 Amit 90
```

---

## dict get

Retrieves a value associated with a key.

Example

```tcl
dict get $marks Rahul
```

---

## dict set

Adds or updates an entry.

Example

```tcl
dict set marks Gaurav 95
```

---

## dict keys

Returns all keys.

Example

```tcl
dict keys $marks
```

---

## dict values

Returns all stored values.

Example

```tcl
dict values $marks
```

---

## dict exists

Checks whether a key exists.

Example

```tcl
dict exists $marks Rahul
```

---

## dict for

Iterates through every key-value pair.

Example

```tcl
dict for {module area} $modules {

    puts "$module : $area"

}
```

---

# Arrays vs Dictionaries

| Feature | Arrays | Dictionaries |
|---------|---------|--------------|
| Data Storage | Indexed Variables | Key-Value Object |
| Access Method | `array(index)` | `dict get` |
| Modification | `array set` | `dict set` |
| Iteration | `array names` | `dict for` |
| Best Use | Dynamic Indexed Data | Structured Information |

---

# Mini Project

## Module Database

The final project demonstrates how dictionaries can be used to build a simple RTL module database.

Each module is stored as a key, while its corresponding area is stored as the associated value.

Example Data

```text
uart_tx   → 15432
spi       → 9800
fifo      → 4200
alu       → 6700
```

The script iterates through the dictionary and displays the stored information in a readable format.

This resembles how EDA scripts organize synthesis statistics and module information.

---

# Command Reference

| Command | Description |
|----------|-------------|
| `array set` | Creates an array |
| `array names` | Returns array indices |
| `array get` | Returns key-value pairs |
| `array exists` | Checks array existence |
| `unset` | Deletes an array |
| `unset array(index)` | Deletes one element |
| `dict create` | Creates a dictionary |
| `dict get` | Retrieves a value |
| `dict set` | Adds or updates data |
| `dict keys` | Returns all keys |
| `dict values` | Returns all values |
| `dict exists` | Checks if a key exists |
| `dict for` | Iterates through dictionary |

---

# Industry Applications

Arrays and Dictionaries are widely used in FPGA and ASIC automation for:

- Storing module information
- Managing synthesis results
- Organizing timing data
- Keeping configuration parameters
- Generating reports
- Managing constraints
- Automating repetitive tasks

---

# Best Practices

- Use arrays when indexed access is required.
- Use dictionaries for structured key-value data.
- Check array existence before accessing elements.
- Remove unused arrays to free memory.
- Use descriptive keys for better readability.
- Prefer dictionaries when representing real-world data.

---

# Common Interview Questions

### 1. What is an Array in TCL?

An array is a collection of variables indexed by names.

---

### 2. What is a Dictionary?

A dictionary stores information as key-value pairs.

---

### 3. Difference between Arrays and Dictionaries?

Arrays use indexed variables, whereas dictionaries store data as a single key-value object.

---

### 4. What does `array exists` do?

Checks whether an array exists before it is accessed.

---

### 5. Why use `dict for`?

It provides an efficient way to iterate through all key-value pairs in a dictionary.

---

# Key Takeaways

- Learned how to create and access arrays.
- Understood array commands such as `array names`, `array get`, `array exists`, and `unset`.
- Learned how dictionaries simplify structured data storage.
- Explored dictionary operations including `dict create`, `dict get`, `dict set`, `dict keys`, `dict values`, and `dict for`.
- Built a practical Module Database using dictionaries.

---

# 📅 Day 8 Summary

- ✅ Arrays
- ✅ array set
- ✅ array names
- ✅ array get
- ✅ array exists
- ✅ unset
- ✅ Dictionary Basics
- ✅ dict create
- ✅ dict get
- ✅ dict set
- ✅ dict keys
- ✅ dict values
- ✅ dict exists
- ✅ dict for
- ✅ Module Database Mini Project

---

## ⏭️ Next Day

**Day 9 – Regular Expressions & Error Handling**

In the next chapter, you'll learn how to search and manipulate text using Regular Expressions (`regexp` and `regsub`), handle runtime errors using `catch` and `error`, and build an EDA-style Timing Report Parser.
