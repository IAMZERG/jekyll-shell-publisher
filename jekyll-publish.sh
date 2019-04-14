#!/bin/bash

echo "Enter post title "
read title

echo "Enter author name "
read author

day=`date +%Y-%m-%d`

# this should be cleaned up, but... later

dasherizedtitle=${title//[^a-zA-Z\d\s]/-}


filename="$day"\-"$dasherizedtitle".md

#echo "$dasherizedtitle-$date.md"
echo "$filename"

timestamp=`date`

cat > $filename <<EOF
---
title: $title
author: $author
date: $timestamp
comments: true
---

EOF

vim + $filename

