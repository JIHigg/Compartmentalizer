#!/bin/bash

#Första File

#Variables
date=$(date +%y%m%d%M%S)
user=$(whoami)
label=$(date +%y%m%d%M%S)$(whoami)
filename="$label.txt"

#Home Directory
cd

#Check Arguments
if [ -n "$1" ]; then
	ls -lah  *$1 > $filename
else ls -lah > $filename
fi

#Make new Directory
NewFolder="${label}Copy"
mkdir $NewFolder

#Copy and Rename
cp $filename $NewFolder/${label}_copy.txt

