#!/bin/sh
#eg. edit by ak reset icon image size
#used:
read -p "Please input image file: " filename
#filename=$1
dirname="icon"

#icon name array
name_array=(
"Icon-20.png"
"Icon-20@2x.png"
"Icon-20@3x.png"
"Icon-29.png"
"Icon-29@2x.png"
"Icon-29@3x.png"
"Icon-40.png"
"Icon-40@2x.png"
"Icon-40@3x.png"
"Icon-50.png"
"Icon-50@2x.png"
"Icon-57.png"
"Icon-57@2x.png"
"Icon-60@2x.png"
"Icon-60@3x.png"
"Icon-72.png"
"Icon-72@2x.png"
"Icon-76.png"
"Icon-76@2x.png"
"Icon-83.5@2x.png"
)
#icon size array
size_array=(
"20"
"40"
"60"
"29"
"58"
"87"
"40"
"80"
"120"
"50"
"100"
"57"
"114"
"120"
"180"
"72"
"144"
"76"
"152"
"167"
)

mkdir $dirname

let=${#name_array[*]}.;==
for ((i=0;i<${#name_array[*]};i++))
do
    m_dir=$dirname/${name_array[i]}
    cp $filename $m_dir

    sips -z ${size_array[i]} ${size_array[i]} $m_dir
done

