#!/bin/bash
# Author : Drew McFaul
# Date: 02/06/2020

#Code to read in filename and regex from user and search the given file with
#the given regular expression.
#echo "Input a filename."
#read filename
#echo "Input a regular expression."
#read regularexpression
#grep $regularexpression $filename

#Code to find how many phone numbers are in regex_practice.
grep -c -E "\d{3}-\d{3}-\d{4}" "regex_practice.txt"

#Code to find how many email addresses are in regex_practice.
grep -c -E ".+@.+\.\w{3}" "regex_practice.txt"

#Code to list phone numbers that have a 303 area code.
grep -o -E "303-\d{3}-\d{4}" "regex_practice.txt"

#Code to pipe all @geocities.com email addresses into a file.
grep -E ".+@geocities\.com" "regex_practice.txt" >> "email_results.txt"
