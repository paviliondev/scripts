#!/usr/bin/env bash

# Check that dump path has been passed
if [ $# -eq 0 ]; then
  echo "Usage: discourse_restore.sh /path/to/dump"
  exit 1
fi

cd $DISCOURSE_DIR/discourse
rake -g db:restore\[$@\]