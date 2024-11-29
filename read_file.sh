#!/bin/bash


# Store the destination folder
DEST_FOLDER="files_ilasp"

# Create the destination folder if it doesn't exist
mkdir -p "$DEST_FOLDER"

# Check if the destination folder is writable
if [ ! -w "$DEST_FOLDER" ]; then
    echo "Error: Destination folder is not writable."
    exit 1
fi

FILENAME="file.las"

# Read from stdin and save to the destination folder
cat > "${DEST_FOLDER}/${FILENAME}"

ILASP "--version=4" "${DEST_FOLDER}/${FILENAME}"
