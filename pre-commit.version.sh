#!/bin/sh
#
# An example hook script to verify what is about to be committed.
# Called by "git commit" with no arguments.  The hook should
# exit with non-zero status after issuing an appropriate message if
# it wants to stop the commit.
 
#  Variable Definitions

 # The json file where the version change will be
verFileName="version.json" 
 # The json base text file if the file is empty or none existant
defaultFileText="{\"version\":\"1.1.0\"}"
# INCREMENT - increments minor version by 1
# DATE - set minor version to todays date in mmdd format
updateType="DATE"  


fileText=`cat $verFileName`
stringLength=${#fileText} 
if ((stringLength < 3))  
    then fileText="$defaultFileText"
    echo "No version file found. Creating new file."
fi
  
regMinorVer='"([0-9]{1,6}\.[0-9]{1,6})\.([0-9]{1,6})"'
 
[[ $fileText =~ $regMinorVer ]]  
 
fullVersionText="${BASH_REMATCH[0]}"
majorVersionText="${BASH_REMATCH[1]}"
originalMinorVersion="${BASH_REMATCH[2]}"
newMinorVersion=$((originalMinorVersion+1))

currentDate=$(date '+%m%d')
 
echo "Date : $currentDate"

# echo "full $fullVersionText"
# echo "major $majorVersionText"
# echo "minor $originalMinorVersion"


 if  [ "$updateType" = "DATE" ]
     then newMinorVersion="$currentDate"
 fi
 

oldVersion="$majorVersionText.$originalMinorVersion"
newVersion="$majorVersionText.$newMinorVersion"
 
echo "original minor $originalMinorVersion"
echo "new minor $newMinorVersion"
echo   
echo "Minor version upgraded from $originalMinorVersion to $newMinorVersion"
echo "New version $newVersion"
echo 
echo 
 
echo "${fileText/"$oldVersion"/"$newVersion"}" > "$verFileName"


read -t10 -n1 -r -p 'Press any key in the next ten seconds...' key
