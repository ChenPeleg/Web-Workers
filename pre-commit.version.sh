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
updateType="INCREMENT" 


fileText=`cat $verFileName`
stringLength=${#fileText} 
if ((stringLength < 3))  
    then fileText="$defaultFileText"
    echo "No version file found. Creating new file."
fi
  
regMinorVer='"([0-9]{1,6}\.[0-9]{1,6})\.([0-9]{1,6})"'
 
[[ $fileText =~ $regMinorVer ]]  

echo "${BASH_REMATCH[0]}"


fullVersionText="${BASH_REMATCH[0]}"
majorVersionText="${BASH_REMATCH[1]}"
originalMinorVersion="${BASH_REMATCH[2]}"
newMinorVersion=$((originalMinorVersion+1))

# if [updateType -eq "DATE"]
#     then newresult=1200
# fi
newMinorVersion=$newresult

oldVersion="$majorVersionText.$originalMinorVersion"
newVersion="$majorVersionText.$newMinorVersion"
 
 echo 
echo   
echo "Minor version upgraded from $originalMinorVersion to $newMinorVersion"
echo "New version $newVersion"
echo 
echo 
 
echo "${fileText/"$oldVersion"/"$newVersion"}" > "$verFileName"


read -t10 -n1 -r -p 'Press any key in the next ten seconds...' key
