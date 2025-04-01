# Bash File Read/Write Script

This is a simple Bash script that allows a user to write text to a file or read the contents of an existing file via the terminal.

**The script was created to meet the requirements for Task 3: Write, read to file, including:**

- Letting the user choose a mode: w (write) or r (read)

- Writing a custom text to a file in the current or chosen directory

- Reading from a file path provided as an argument

# Features

- User-friendly prompts for writing text

- Optional directory selection for saving

- Safe handling of missing file paths

- Displays the file content in the terminal when reading

# Usage
1.**Make the script executable**

chmod +x file_read_write.sh

2.**Write Mode**

./file_read_write.sh w

    Prompts for:

        Text to save

        File name (e.g. note.txt)

        Optional folder to save to

3.**Read Mode**

./file_read_write.sh r filename.txt

    Outputs the content of the specified file

# Example
```bash
./file_read_write.sh w
Enter the text you want to save: Hello from Bash!
Enter the filename: hello.txt
Do you want to choose a specific folder? (y/n): n

./file_read_write.sh r hello.txt

Contents of hello.txt:
Hello from Bash!
```
# Notes

    This script is intended for educational use

    Developed on Kali Linux using Bash

# License

Open for personal and academic use.

