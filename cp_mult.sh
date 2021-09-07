#!/bin/bash
if [[ "$#" -le 1 ]]; then
  echo "Usage: ./cp_mult.sh [src] [dest1] ..."
  exit 1
else
  input=$1
  shift
  start=1
  end=$#
  while [[ $start -le $end ]]; do
    cp $input $1
    shift
    start=$((start + 1))
  done
fi
