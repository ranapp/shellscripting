#!/bin/bash
if [[ "$#" -ne 2 ]]; then
 echo "Usage: ./head_tail.sh [file] [num lines]"
 exit 1
else
  head -n $2 $1
  echo "---"
  tail -n $2 $1
fi
