#!/bin/bash
# Copy all js files from one directory to another.

find test_data -name '*.js' | xargs -I {} cp {} copy/
