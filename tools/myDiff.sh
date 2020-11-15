#!/bin/bash

# Input arguments from `git diff` are:
#    $1   $2       $3      $4       $5       $6      $7
#    path old-file old-hex old-mode new-file new-hex new-mode

path="$1"
tempDiffPath=`mktemp --suffix=".diff"`

# xltrail's diff output is color-coded with no option to remove it
# (see https://github.com/ZoomerAnalytics/git-xltrail/issues/30) so we use
# sed to strip the color codes.

# get diff of vba stuff
#git-xl-diff.exe $@ | sed 's/\x1b\[[0-9;]*m//g' > $tempDiffPath
./tools/git-xl/git-xl-diff.exe $@ > $tempDiffPath

# get diff of cells
./tools/ExcelCompare-0.6.1/bin/excel_cmp.bat $2 $5 >> $tempDiffPath

cat $tempDiffPath