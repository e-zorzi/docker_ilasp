#!/usr/bin/env bash

PLATFORM="$(uname -s)"
ARCH="$(uname -m)"

echo "Running $PLATFORM ($ARCH)"
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    echo "Please provide <file> to ILASP on."
    exit 1
fi

cat "$1" | docker run --platform linux/x86_64 -i ilasp /bin/bash -c 'cat'