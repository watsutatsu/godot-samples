#!/bin/bash
set -e

mkdir -p build

# Iterate over all directories in the games folder
for dir in games/*; do
  # Check if it is a directory
  if [ -d "$dir" ]; then
    echo "::group::$dir"
    # Check if the "tasks/ci.sh" file exists
    if [ -f "$dir/tasks/ci.sh" ]; then
      echo "Running tasks/ci.sh in $dir"
      # Run the "tasks/ci.sh" file
      pushd "$dir"
      bash "tasks/ci.sh"
      popd
    else
      echo "Skipping $dir - No tasks/ci.sh file found"
    fi
    echo "::endgroup::"
  fi
done
