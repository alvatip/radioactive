#!/usr/bin/env bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
  mkdir -p $DEST_DIR
fi

# Remove folder if existing
if [ -d "$DEST_DIR/Radioactive" ]; then
  rm -rf "$DEST_DIR/Radioactive"
fi

cp -r radioactive/ $DEST_DIR/Radioactive

echo "Finished..."

