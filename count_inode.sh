#!/bin/bash
inode=$(ls -li $1| awk 'NR != 1{print $1}'| sort | uniq | wc -l)
echo -n "Number of unique inodes: "
echo $inode
