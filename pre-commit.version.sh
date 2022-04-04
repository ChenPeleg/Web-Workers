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
echo ""
stringvalue=`cat $verFileName`
#myvariable="$(grep -o '^Hello \K[^ ]+(?= )' $stringvalue)"
#echo "$stringvalue" | grep  '[1234567890]{1,10}\"\}'


newVersion="{\"version\":\"1.1.0\"}"
echo $newVersion > "$verFileName"

#echo "124.23.30\"}" | grep -Eo '\.[0-9]{1,6}"}' 


#OnlyMinorWithQuoats= "124.23.30\"}" | grep -Eo '\.[0-9]{1,6}"}' 
#OnlyMinor=onlyMinorWithQuoats | grep -Eo '[0-9]{1,6}'  

somevar="just a vars"
# str="This is only minor version:"
# echo $str
echo "some variable"
echo "$somevar"
echo

fileValue='124.23.30\"}'
regex1='\.[0-9]{1,6}"}' 


pat='[^0-9]+([0-9]+)'
s='124.23.30\"}'
[[ $s =~ $pat ]] # $pat must be unquoted

result="${BASH_REMATCH[1]}"
 
echo "regex result: $result"


echo "minor version with punctuation:"
echo "1: ${BASH_REMATCH[0]}"
echo "2: ${OnlyMinorWithQuoats}${9}"
echo


echo "minor version:"
echo "$onlyMinor"
echo

read -t10 -n1 -r -p 'Press any key in the next ten seconds...' key
