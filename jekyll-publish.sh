#!/bin/bash

echo "Enter post title "
read title

echo "Enter author name "
read author

day=`date +%Y-%m-%d`

# this should be cleaned up, but... later

title=${title//[^a-zA-Z\d\s]/-}


filename="$day"\-"$title".md

#echo "$dasherizedtitle-$date.md"
echo "$filename"

#cat > date <<EOF
#
#info code info 
#info code info
#info code info
#
#EOF 
