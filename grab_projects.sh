#!/bin/bash

# REQUIRED: git

#Move into required directory
printf "\tMoving into project storage directory: %s \n" $1
# Move into new directory
cd $1

#Load the required projects file
source projects.sh

# Iterate the projects array using for loop
# git clone each project if not present
# if present pulls to update
for project in ${projects[@]}; do
  if ([ -e $project ]); then
    printf "\tUpdating project: %s \n" $project
    cd $project
    git pull
    cd ..
  else
    printf "\tCloning project: %s into projects: %s\n" $project $1
    git clone "$base_url/$project.git"
  fi
done
