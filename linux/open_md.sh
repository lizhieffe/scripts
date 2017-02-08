#!/bin/bash

# Open mark down file.

if [[ $# -ne 1 ]]; then
  echo "I’m sorry, needs 1 input params."
  echo "E.g.,"
  echo "  open_md INPUT_FILE"
  exit 1
fi

pandoc ${1} | lynx -stdin
