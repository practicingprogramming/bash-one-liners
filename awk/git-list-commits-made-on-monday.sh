#!/bin/bash
# List git commits made on Monday.

git log --pretty=format:"%h%x09%an%x09%ad%x09%s" | awk '$3 == "Mon"'
