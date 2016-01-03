#!/bin/bash
# List all changed, added or deleted files.

git status -s | awk '{ print $2 }'
