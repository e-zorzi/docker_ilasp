if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    echo "Please provide <file> to ILASP on."
    exit 1
fi

cat "${1}" | docker run -i ilasp /bin/bash -c 'cat'