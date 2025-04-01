!/bin/bash

# Check if user provided at least one argument (mode)
if [ "$#" -lt 1 ]; then
    echo "Error: You must choose mode: 'r' for read or 'w' for write."
    exit 1
fi

MODE=$1

# Mode: Write to file
if [ "$MODE" == "w" ]; then
    echo "Write Mode Selected"
    read -p "Enter the text you want to save: " USER_TEXT
    read -p "Enter the filename to save as (for example: note.txt): " FILE_NAME

    # Optional: Ask for custom directory
    read -p "Do you want to choose a specific folder? (y/n): " CHOICE
    if [ "$CHOICE" == "y" ]; then
        read -p "Enter full directory path: " DIR_PATH
        FULL_PATH="$DIR_PATH/$FILE_NAME"
    else
        FULL_PATH="$FILE_NAME"
    fi

    echo "$USER_TEXT" > "$FULL_PATH"
    echo "Text saved to: $FULL_PATH"

# Mode: Read from file
elif [ "$MODE" == "r" ]; then
    if [ "$#" -lt 2 ]; then
        echo "Error: Please provide the file path to read."
        exit 1
    fi

    FILE_PATH=$2
    if [ -f "$FILE_PATH" ]; then
        echo "Contents of $FILE_PATH:"
        cat "$FILE_PATH"
    else
        echo "File not found: $FILE_PATH"
    fi

else
    echo "Invalid mode. Use 'r' for read or 'w' for write."
    exit 1
fi

