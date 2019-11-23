#!/bin/bash
function create() {
    currDir=($PWD)
    dir=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
    cd "$dir"
    
    python3 create.py
    cd "$currDir"
}