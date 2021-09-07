#!/bin/bash
for i in $*; do
  if [[ -d "$1" ]]; then
    for file in $1/*; do
      echo "=== Preview of $file ==="
      head -n 3 $file
      echo -n "Are you sure you want to delete $file (y/n)? "
      read input
      if [[ $input == "y" ]]; then
          rm -f $file
      fi
      if [[ $input == "q" ]]; then
        break
      fi
    done
  else
    echo "=== Preview of $1 ==="
    head -n 3 $1
    echo -n "Are you sure you want to delete $1 (y/n)? "
    read input
    if [[ $input == "y" ]]; then
      rm -f $1
    fi
    if [[ $input == "q" ]]; then
      break
    fi
  fi
shift
done
