#!/bin/sh

# Check if an argument is provided and if it has a .rmp extension
if [ "$#" -eq 1 ] && [ "${1##*.}" = "rmp" ]; then
  FILE="$1"
else
  FILE="projects/cheat.rmp"
fi

vim --clean -c "source script/rconfig2.vim" "$FILE";