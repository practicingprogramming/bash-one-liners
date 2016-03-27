#!/bin/bash
# Convert rspec tests from "should" and "stub" to "expect" and "allow".

convert() {
    cat $1 | \
        sed 's/^\(\s\+\)\(.*\)\(\.should\)\(.*\)$/\1expect(\2\).to\4/' | \
        sed 's/^\(\s\+\)\(.*\)\(\.stub\)\(.*\)$/\1allow(\2).to receive\4/' \
        > .tmp
    mv .tmp $1
}
export -f convert

find spec -name '*_spec.rb' | xargs -I {} bash -c "convert {}"
