#!/bin/bash
function Hello() {
    local v2="Ramesh"
    echo 'Welcome to Bash ' $1
    echo $v2
    return 2
}  
Hello "Ramesh"
echo $?
echo $v2
