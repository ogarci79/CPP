#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage ./start.sh name_of_dir"
    exit
fi

new_dir=$1

if [ -d $new_dir ];then 
    echo "$new_dir exists"
    exit
fi

cp -r zero $new_dir
dirs=$(find $new_dir -name "zero*")
for i in $dirs
do
    pathname=$(dirname "$i")
    filename=$(basename "$i")
    ext="${filename##*.}"
    newfilename="$pathname/$new_dir.$ext"

    mv $i $newfilename
done 

files=$(grep -ril zero $new_dir)
for i in $files
do
    sed  -i "s/zero/$new_dir/Ig" $i
done

