#!/bin/bash
# Delete all files from a directory
# and ask for confirmation for each file.

find test_data -name '*.js' | xargs -p -I {} rm {}
