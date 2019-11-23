#!/bin/bash
function create() {
    
    projectPath="C:\Users\arpit\Desktop\prog"
    currDir=($PWD)
    dir=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
    cd "$dir"
    if [ "$1" == "" ]; then
        echo "You're missing a project name!";
    else
        # python3 create.py $1
        cd "$projectPath"
        mkdir "$1"
        cd "$1"
        
        file="main.py"
        if [  "$2" != "" ]; then
            file="main.${$2}"
        fi
        
        git init
        touch file
        touch "README.md"
        git add .
        git commit -m "Initial commit"
        git push or
        
        
        # cd "$currDir"
    fi
    
    
    
}

function test() {
    h=($1)
    echo "$h"
}