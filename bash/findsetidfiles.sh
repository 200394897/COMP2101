#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise
# it uses the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files are sorted by their owner

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the
# setuid file list including having a title
# use the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files should be sorted by their group

# Task 2 for the exercise is to modify it to also display the 10 largest regular files in the system, sorted by their sizes
# The listing should only have the file name, owner, and size in MBytes and be displayed after the listings of
# setuid and setgid files and should have its own title
# use the find command to generate the list of files with their sizes, with an error redirect to /dev/null
# use cut or awk to display only the output desired

echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
echo ""
echo "Setgid files:" # setgid file list including having a title
echo "=============="
find / -type f -executable -perm -2000 -ls 2>/dev/null | #it verifies and shows stagid files into the second list
#/dev/null , here we cant get any error in inaccesibel files.
sort -k 6 # -k 6 is for the identified files should be sorted by their group
echo ""
echo "The 10 largest regular files in the system:"
echo "=============================================="
find /home/ -type f -exec ls -alh 2>/dev/null --block-size=M {} \; | sort -hrk5 | head -n 10| awk '{print $9, $3, $5}' 
#here the block size turns to  MBytes, and error changes to /dev/null will garbage errors, {} \; and it runs ls command when it find any error.
#small k5 on 5th column reversely
#it gives an outputs of first 10 file and It also displays it on the top.
#awk shows file’s name size and order by column.
echo ""
