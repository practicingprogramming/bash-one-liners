#!/bin/bash
# Concatenate all js files
# and separate by line breaks.

find . -name '*.js' | xargs -I {} sh -c 'cat {}; echo "\n"'
