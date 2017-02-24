#!/usr/bin/env bash

# globals
note_dir="$PWD/.notes"

# functions
check_dir() {
  # look for .notes dir
  if [ -d "$note_dir" ]; then
    return 0
  else
    return 1
  fi
}

list_note() {
  # check for notes
  if check_dir; then
    escpath=$(echo "$note_dir" | sed 's/\//\\\//g')
    cat $(ls $PWD/.notes | sort -r | sed "/^./s/^/$escpath\//") | less
  else
    echo ".notes/ local directory not found"
  fi
}

# run main
list_note
