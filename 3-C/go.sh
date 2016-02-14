#!/usr/bin/env bash

file="add.out"
if [ -f "$file" ]
then
	./add.out
else
  gcc "add.c" -o "add.out"
  ./add.out
fi
