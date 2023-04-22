#!/bin/bash
initialFileName=""
i=0

declare fileArray
read -p "Enter the picture directory path: " Path
files=$(ls $Path)

function checkDirExists(){
    if [[ ! -e "$1" ]]
    then
    mkdir -p "$1"
    fi
}

function getExtension(){
    echo "$1" | awk -F'.' '{print $2}'
}
function moveFile(){
    extension=$(getExtension "$1")
    fileName="$1"
    path="$Path/$fileName"
    dateCreation=$(stat "$path" | tail -1|awk -F':' '{print $2}' | awk -F' ' '{print $1}')
    checkDirExists "$Path/sorted/$dateCreation"
    mv "$path" "$Path/sorted/$dateCreation"
}

function checkIfDir(){
    if [[ ! -d "$1" ]]
    then
    return 0
    fi
    return 1
}

function combineName(){
    result=$(echo "$1" | grep -E '(.png|.jpeg|.jpg|.webp)')
    if [[ "$result" == "" ]]
    then
    initialFileName+="$1 "
    else if [[ $(getExtension $result) == "png" || $(getExtension $result) == "jpeg" ||$(getExtension $result) == "jpg"||$(getExtension $result) == "webp" ]]
    then
    initialFileName+="$1"
    moveFile "$initialFileName"
    initialFileName=""
    fi
    fi
}

for file in $files
do
checkIfDir "$Path/$file"
value=$?
if [[ $value -eq 0 && ($(getExtension $file) == "png" || $(getExtension $file) == "jpeg" || $(getExtension $file) == "jpg" || $(getExtension $file) == "webp" || $(getExtension $file) == "") ]];
then
combineName $file
else
echo "Ignoring $file"
fi
done
