#!/bin/bash

read -p "Enter the number of rows: " rows

for ((i=rows; i>=1; i--)); do
  for ((j=i; j>=1; j--)); do
    echo -n "$j"
  done

  echo
done