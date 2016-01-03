#!/bin/bash
# Print contents of all js files in the current directory.

find . -name *.js | xargs cat
