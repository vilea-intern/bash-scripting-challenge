#!/bin/bash

#Compute the hash of the file, select only the hash from the output
hash1=$(md5sum ./randomfile | awk '{print $1;}')
#echo "file hash: ${hash1}"

#Retrieve the previously computed checksum (We consider only the first word of the first line)
hash2=$(cat ./randomfile-hash | head -n1 | awk '{print $1;}')
#echo "provided hash: ${hash2}"

#Check if the strings are the same
if [ "$hash1" = "$hash2" ]; then
    echo "ok"
else
    echo "nok"
fi
