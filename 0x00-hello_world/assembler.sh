#!/bin/bash

# Check if CFILE variable is set
if [ -z "$CFILE" ]; then
    echo "Error: CFILE variable is not set."
    exit 1
fi

# Extract filename without extension
filename=$(basename -- "$CFILE")
filename="${filename%.*}"

# Compile C file to assembly code
gcc -S -o "${filename}.s" "$CFILE"

# Check if compilation was successful
if [ $? -ne 0 ]; then
    echo "Error: Compilation failed."
    exit 1
fi

echo "Assembly code generated successfully: ${filename}.s"

