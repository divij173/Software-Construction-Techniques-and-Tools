---

# Software Construction: Techniques and Tools

Welcome to the repository for the course "Software Construction: Techniques and Tools." This repository contains two projects, each focusing on different aspects of software development and programming techniques.

## Project 1: Trigger

### Overview

Project 1, named "Trigger," involves the implementation of a custom Git command using bash/dash scripting in Python. The purpose of this project is to simulate basic Git functionalities for version control and configuration management within a software development environment.

### Implemented Git Commands

The following Git commands have been implemented in this project:

- `add`: Add file contents to the index.
- `branch`: List, create, or delete branches.
- `checkout`: Switch branches or restore working tree files.
- `commit`: Record changes to the repository.
- `init`: Create an empty Git repository or reinitialize an existing one.
- `log`: Show commit logs.
- `merge`: Join two or more development histories together.
- `rm`: Remove files from the working tree and from the index.
- `show`: Show various types of objects.
- `status`: Show the working tree status.

These commands provide essential functionalities for managing source code versions, branches, commits, and repository status.

## Project 2: Slippy

### Overview

Project 2, named "Slippy," is a Python script (`slippy.py`) designed for text processing and manipulation. The script supports a range of Sed-like commands and regex-based operations for efficient text editing.

### Supported Commands

The `slippy.py` script supports the following command-line options and functionalities:

- `-i`: Read input from the command line.
- `-n`: Suppress automatic printing of pattern space.
- `-f <script-file>`: Read commands from a script file.
- `<sed-command>`: Specify Sed-like commands for text processing.
- `<files>...`: Specify input files for text processing.

### Usage Instructions

#### Basic Usage

To use the script, follow these basic usage instructions:

```bash
python3 slippy.py [-i] [-n] [-f <script-file> | <sed-command>] [<files>...]
```

- `-i`: Read input from the command line.
- `-n`: Suppress automatic printing of pattern space.
- `-f <script-file>`: Read Sed-like commands from a script file.
- `<sed-command>`: Specify Sed-like commands directly.
- `<files>...`: Specify input files for text processing.

#### Examples

Here are some examples demonstrating the usage of `slippy.py`:

1. Process text using Sed-like commands:
   ```bash
   python3 slippy.py 's/old/new/' input.txt
   ```

2. Read commands from a script file:
   ```bash
   python3 slippy.py -f script.txt input.txt
   ```

3. Perform regex-based substitution and print lines:
   ```bash
   python3 slippy.py -i 's/\d+/NUMBER/' input.txt
   ```
---
