#!/bin/sh
#
# An example hook script to verify what is about to be committed.
# Called by "git commit" with no arguments.  The hook should
# exit with non-zero status after issuing an appropriate message if
# it wants to stop the commit.
#
# To enable this hook, rename this file to "pre-commit".

verFileName="version.json" 
echo "Updating version..."
stringvalue=`cat $verFileName`
#myvariable="$(grep -o '^Hello \K[^ ]+(?= )' $stringvalue)"


newVersion="{\"version\":\"1.1.0\"}"

echo $newVersion > "$verFileName"

echo "$stringvalue" | grep  '[1234567890]{1,10}\"\}'

echo "124.23.30\"}" | grep -Eo '\.[0-9]{1,6}"}' 

onlyMinor="124.23.30\"}" | grep -Eo '\.[0-9]{1,6}"}' 
str="string just"
echo $onlyMinor

echo $str

read -t10 -n1 -r -p 'Press any key in the next ten seconds...' key
