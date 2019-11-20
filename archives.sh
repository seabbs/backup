#!/bin/bash

# Array of folders to look in to backup - modify for your folders
# Using .. here as folders are outside the backup directory
declare -a archives=(
  "../academic/active-packages"
  "../academic/active-presentations"
  "../academic/active-analysis"
)
