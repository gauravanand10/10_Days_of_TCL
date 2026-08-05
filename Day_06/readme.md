# 📅 Day 6 – String Handling in TCL

Welcome to **Day 6** of my **TCL Learning Journey**.

Today, I explored **String Handling**, one of the most frequently used features in TCL. Strings are used extensively in scripting because almost everything in TCL is treated as a string. Understanding string manipulation is essential for parsing reports, processing tool outputs, handling filenames, and automating EDA workflows.

---

# 🎯 Learning Objectives

By the end of Day 6, I learned how to:

- Create and manipulate strings.
- Find the length of a string.
- Convert strings to uppercase and lowercase.
- Compare two strings.
- Search for substrings.
- Extract portions of a string.
- Replace parts of a string.
- Split and join strings.
- Use string operations in practical automation tasks.

---

# 📂 Directory Structure

```
Day06_String_Handling
│
├── README.md
├── string_basics.tcl
├── string_operations.tcl
├── string_search_replace.tcl
└── rtl_filename_processor.tcl
```

---

# 📄 Files Description

| File | Description |
|------|-------------|
| `string_basics.tcl` | Creating strings and basic operations. |
| `string_operations.tcl` | Demonstrates common string commands such as length, case conversion, comparison, split, and join. |
| `string_search_replace.tcl` | Demonstrates substring search, extraction, and replacement. |
| `rtl_filename_processor.tcl` | Mini project that processes RTL filenames using string operations. |

---

# 📚 Why String Handling?

Almost every EDA tool generates reports in text format.

Examples include:

- Timing reports
- Area reports
- Power reports
- Log files
- Constraint files
- Netlists
- Simulation outputs

To automate these tasks, scripts need to manipulate strings efficiently.

---

# 📝 Commands Learned

## 1️⃣ string length

Returns the number of characters in a string.

### Syntax

```tcl
string length string
```

### Example

```tcl
set module "uart_tx"

puts [string length $module]
```

Output

```
7
```

---

## 2️⃣ string toupper

Converts every character to uppercase.

### Syntax

```tcl
string toupper string
```

Example

```tcl
puts [string toupper "uart_tx"]
```

Output

```
UART_TX
```

---

## 3️⃣ string tolower

Converts every character to lowercase.

### Syntax

```tcl
string tolower string
```

Example

```tcl
puts [string tolower "FIFO"]
```

Output

```
fifo
```

---

## 4️⃣ string compare

Compares two strings.

### Syntax

```tcl
string compare string1 string2
```

Returns

- `0` → Strings are equal
- Negative → First string comes before second
- Positive → First string comes after second

Example

```tcl
puts [string compare "RTL" "RTL"]
```

Output

```
0
```

---

## 5️⃣ string first

Finds the first occurrence of a substring.

### Syntax

```tcl
string first substring string
```

Example

```tcl
puts [string first "tx" "uart_tx"]
```

Output

```
5
```

---

## 6️⃣ string range

Extracts part of a string.

### Syntax

```tcl
string range string start end
```

Example

```tcl
puts [string range "uart_tx" 0 3]
```

Output

```
uart
```

---

## 7️⃣ string replace

Replaces part of a string.

### Syntax

```tcl
string replace string first last newString
```

Example

```tcl
puts [string replace "uart_tx" 5 6 "rx"]
```

Output

```
uart_rx
```

---

## 8️⃣ split

Breaks a string into a list.

### Syntax

```tcl
split string delimiter
```

Example

```tcl
split "alu,fifo,uart" ","
```

Output

```
alu fifo uart
```

---

## 9️⃣ join

Combines list elements into one string.

### Syntax

```tcl
join list delimiter
```

Example

```tcl
join {alu fifo uart} ","
```

Output

```
alu,fifo,uart
```

---

# 📋 Command Reference

| Command | Purpose |
|----------|---------|
| `string length` | Returns string length |
| `string toupper` | Converts to uppercase |
| `string tolower` | Converts to lowercase |
| `string compare` | Compares two strings |
| `string first` | Finds substring |
| `string range` | Extracts part of a string |
| `string replace` | Replaces characters |
| `split` | Converts string to list |
| `join` | Converts list back to string |

---

# 🔄 Common String Operations

| Operation | Command |
|-----------|---------|
| Find Length | `string length` |
| Uppercase | `string toupper` |
| Lowercase | `string tolower` |
| Compare | `string compare` |
| Search | `string first` |
| Extract | `string range` |
| Replace | `string replace` |
| Split | `split` |
| Join | `join` |

---

# 💼 Industry Relevance

String handling is one of the most heavily used features in EDA scripting.

Typical applications include:

- Parsing synthesis reports
- Extracting timing paths
- Reading log files
- Manipulating RTL filenames
- Processing netlists
- Generating automation reports
- Handling design constraints
- Parsing tool outputs

For example, a TCL script may search for the word **"Slack"** in a timing report or replace module names while generating reports.

---

# 🚀 Mini Project – RTL Filename Processor

The mini project demonstrates how string operations can be used to process RTL filenames.

Example Input

```
uart_tx.v
fifo.v
spi_master.v
alu.v
```

Possible Operations

- Remove file extension
- Convert module names to uppercase
- Search for keywords
- Generate formatted output

Example Output

```
UART_TX
FIFO
SPI_MASTER
ALU
```

---

# ⚠️ Common Mistakes

| Mistake | Correct Approach |
|----------|------------------|
| Assuming strings are case-insensitive | TCL comparisons are case-sensitive by default |
| Incorrect indices in `string range` | Remember indexing starts at 0 |
| Using `replace` incorrectly | Specify correct start and end positions |
| Forgetting delimiters in `split` | Always provide the proper separator |

---

# ✅ Best Practices

- Use descriptive variable names.
- Use built-in string commands instead of manual parsing.
- Keep filenames and module names consistent.
- Validate string operations before using results.
- Prefer built-in commands for readability and efficiency.

---

# ❓ Interview Questions

### 1. Why is string handling important in TCL?

Because most EDA reports, logs, and configuration files are text-based.

---

### 2. Which command returns the length of a string?

```tcl
string length
```

---

### 3. How do you convert a string to uppercase?

```tcl
string toupper
```

---

### 4. Which command searches for a substring?

```tcl
string first
```

---

### 5. What is the difference between `split` and `join`?

`split` converts a string into a list, whereas `join` converts a list back into a string.

---

### 6. Which command extracts part of a string?

```tcl
string range
```

---

# 🎯 Key Takeaways

- Learned essential string manipulation commands.
- Practiced searching, extracting, and replacing text.
- Understood list conversion using `split` and `join`.
- Built a practical filename processing example.
- Learned how string handling simplifies EDA automation.

---

# ✅ Day 6 Completed

Today, I learned how to manipulate strings effectively using TCL's built-in commands. Since most EDA tools generate text-based reports and logs, mastering string handling is essential for writing robust automation scripts used in FPGA and ASIC design flows.

---

## 🚀 Next Day

➡️ **Day 7 – File Handling**

Topics covered:

- Opening and closing files
- Reading files
- Writing files
- Appending data
- File modes
- RTL Summary Generator Mini Project
