# 📅 Day 7 – File Handling in TCL

Welcome to **Day 7** of my **TCL Learning Journey**.

Today, I learned how to perform **File Handling** in TCL. File handling is an essential concept in automation because almost every EDA tool generates reports, log files, constraint files, and netlists that need to be read, processed, and written automatically.

By learning file operations, I can now create TCL scripts that interact with external files, making automation more efficient and reducing manual effort.

---

# 🎯 Learning Objectives

By the end of Day 7, I learned how to:

- Open files in different modes.
- Read data from files.
- Write data into files.
- Append new information to existing files.
- Close files properly.
- Process text files line by line.
- Generate summary reports automatically.
- Understand how file handling is used in FPGA and ASIC automation.

---

# 📂 Directory Structure

```
Day07_File_Handling
│
├── README.md
├── input
│   └── rtl_files.txt
│
├── output
│   ├── output.txt
│   ├── append_output.txt
│   └── rtl_summary.txt
│
├── src
│   ├── open_close_file.tcl
│   ├── read_file.tcl
│   ├── write_file.tcl
│   ├── append_file.tcl
│   └── rtl_summary_generator.tcl
│
└── screenshots
```

---

# 📄 Files Description

| File | Description |
|------|-------------|
| `open_close_file.tcl` | Opens and closes a file safely. |
| `read_file.tcl` | Reads the contents of a text file line by line. |
| `write_file.tcl` | Creates a new file and writes data into it. |
| `append_file.tcl` | Appends additional data to an existing file. |
| `rtl_summary_generator.tcl` | Reads a list of RTL modules and generates a formatted summary report. |

---

# 📚 Why File Handling?

Without file handling, a TCL script can only work with data stored inside the program.

With file handling, a script can:

- Read synthesis reports
- Read timing reports
- Parse log files
- Generate custom reports
- Update configuration files
- Store simulation results

This is one of the most commonly used features in EDA automation.

---

# 📝 Commands Learned

## 1️⃣ open

Opens a file and returns a **file handle**.

### Syntax

```tcl
open filename mode
```

### Example

```tcl
set fp [open data.txt r]
```

---

## 2️⃣ close

Closes an opened file.

### Syntax

```tcl
close file_handle
```

### Example

```tcl
close $fp
```

Closing files is important because it ensures all data is written correctly and releases system resources.

---

## 3️⃣ gets

Reads one line from a file.

### Syntax

```tcl
gets file_handle
```

### Example

```tcl
set line [gets $fp]
```

---

## 4️⃣ puts

Writes data to a file or displays it on the terminal.

### Display on Terminal

```tcl
puts "Hello"
```

### Write to File

```tcl
puts $fp "Hello"
```

---

## 5️⃣ eof

Checks whether the End Of File has been reached.

### Syntax

```tcl
eof file_handle
```

Example

```tcl
while {![eof $fp]} {

    set line [gets $fp]

    puts $line
}
```

---

# 📂 File Modes

| Mode | Description |
|------|-------------|
| `r` | Read existing file |
| `w` | Create a new file or overwrite an existing file |
| `a` | Append data to an existing file |
| `r+` | Read and write |
| `w+` | Read, write, and overwrite |
| `a+` | Read and append |

The most commonly used modes are **r**, **w**, and **a**.

---

# 🔄 Read vs Write vs Append

| Read | Write | Append |
|------|-------|--------|
| Reads existing data | Creates a new file or overwrites existing content | Adds new content at the end of an existing file |
| Mode: `r` | Mode: `w` | Mode: `a` |

---

# 🔍 Reading a File

Example:

```tcl
set fp [open rtl_files.txt r]

while {![eof $fp]} {

    puts [gets $fp]
}

close $fp
```

This script prints every line from the file.

---

# 📝 Writing a File

Example:

```tcl
set fp [open output.txt w]

puts $fp "RTL Automation"

close $fp
```

If `output.txt` already exists, its previous contents are replaced.

---

# ➕ Appending to a File

Example

```tcl
set fp [open output.txt a]

puts $fp "New Entry"

close $fp
```

Unlike write mode, append mode preserves existing content.

---

# 🚀 Mini Project – RTL Summary Generator

The mini project reads a file containing RTL module names and generates a formatted summary report.

### Input

```
alu.v
fifo.v
uart_tx.v
spi_master.v
```

### Output

```
RTL FILE SUMMARY
================

1. alu.v
2. fifo.v
3. uart_tx.v
4. spi_master.v

Total RTL Files : 4
```

This demonstrates how TCL can automate repetitive report generation tasks.

---

# 💼 Industry Relevance

File handling is one of the most important skills in EDA scripting.

Common use cases include:

- Reading synthesis reports
- Parsing timing reports
- Processing power reports
- Reading constraint files
- Generating summary reports
- Parsing simulation logs
- Extracting design statistics
- Creating automation logs

Nearly every FPGA and ASIC design flow relies on file handling.

---

# 📋 Command Reference

| Command | Purpose |
|----------|---------|
| `open` | Opens a file |
| `close` | Closes a file |
| `gets` | Reads one line |
| `puts` | Displays or writes data |
| `eof` | Checks end of file |

---

# ⚠️ Common Mistakes

| Mistake | Correct Approach |
|----------|------------------|
| Forgetting to close a file | Always use `close` |
| Using `w` when appending | Use `a` for append operations |
| Reading without checking EOF | Always use `while {![eof $fp]}` |
| Assuming file exists | Verify file location before opening |

---

# ✅ Best Practices

- Always close files after use.
- Use descriptive file names.
- Separate input and output files.
- Use loops for processing large files.
- Generate reports automatically instead of editing manually.

---

# ❓ Interview Questions

### 1. What does `open` return?

A file handle that is used to perform file operations.

---

### 2. Difference between `w` and `a` mode?

`w` overwrites the file, whereas `a` appends new data to the existing file.

---

### 3. Why is `close` important?

It ensures all buffered data is written and releases system resources.

---

### 4. What does `eof` do?

It checks whether the end of the file has been reached.

---

### 5. Which command reads one line from a file?

```tcl
gets
```

---

### 6. Which command writes to a file?

```tcl
puts
```

when used with a file handle.

---

# 🎯 Key Takeaways

- Learned how to open and close files.
- Read data line by line.
- Created new files.
- Appended data to existing files.
- Generated reports automatically.
- Understood file modes.
- Built a simple RTL summary generator.
- Learned how file handling is used in EDA automation.

---

# ✅ Day 7 Completed

Today, I learned one of the most practical features of TCL—**File Handling**. This enables scripts to interact with external files, making it possible to automate report generation, parse tool outputs, and manage design data efficiently. These skills form the foundation of many FPGA and ASIC automation workflows.

---

## 🚀 Next Day

➡️ **Day 8 – Arrays & Dictionaries**

Topics covered:

- Arrays
- Dictionaries
- Key-Value Storage
- Data Manipulation
- Mini Project
