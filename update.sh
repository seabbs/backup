#!/bin/bash

# Array of folders to look in to backup - modify for your folders
source $1

# Look over presentations and run project grabber
for archive in ${archives[@]}; do
  printf "\tUpdating archive: %s \n" $archive
  bash grab_projects.sh $archive
done
