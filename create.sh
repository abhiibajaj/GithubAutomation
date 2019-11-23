#!/bin/bash
function create() {
    currDir=($PWD)
    dir=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
    cd "$dir"
    ls
    python3 create.py
    echo "$currDir"
    cd "$currDir"
    
}