#!/usr/bin/env bash
if [[ -z $1 ]]
then
    wd="~/Desktop/"
else
    wd=$1
fi


cd $wd
dirs=($(ls -1F | egrep ".+/$"))
# echo "number of dirs is: ${#dirs[*]}"

for s in ${dirs[*]}
do 
    echo $(du  -h -d 0 $s)
done

