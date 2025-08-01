#!/bin/bash

# Book transfer script using SFTP
# Usage: ./book-transfer.sh <book_file>

# SFTP connection details
REMOTE_HOST="100.69.34.43"
REMOTE_USER="root"
REMOTE_PORT="2222"
REMOTE_PATH="/mnt/onboard"

# Check if book file argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <book_file>"
    echo "Example: $0 book.pdf"
    echo "Example: $0 my-novel.epub"
    exit 1
fi

BOOK_FILE="$1"

# Check if local book file exists
if [ ! -f "$BOOK_FILE" ]; then
    echo "Error: Book file '$BOOK_FILE' does not exist!"
    exit 1
fi

echo "Transferring '$BOOK_FILE' to $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH/"

# Transfer book using SFTP
sftp -P "$REMOTE_PORT" "$REMOTE_USER@$REMOTE_HOST" << EOF
cd $REMOTE_PATH
put "$BOOK_FILE"
quit
EOF

if [ $? -eq 0 ]; then
    echo "✅ Book '$BOOK_FILE' transferred successfully to $REMOTE_PATH/"
else
    echo "❌ Book transfer failed!"
    exit 1
fi
