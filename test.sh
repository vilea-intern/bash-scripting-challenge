#!/bin/bash

#check if the md5sum provides the expected result
hash=$(echo -n "The quick brown fox jumps over the lazy dog" | md5sum | awk '{print $1;}')

if [ "$hash" = "9e107d9d372bb6826bd81d3542a419d6" ]; then
    echo "md5sum behaves as intended"
else
    echo "WARNING md5sum gives an unexpected output"
fi

#Generate a random file and its hash
sh generate-randomfile.sh
sh generate-hash.sh

#Check the checking script
echo $(sh ./instructions-conform-check.sh)
if [ $(sh ./instructions-conform-check.sh) = "ok" ]; then
    echo "True positive"
else
    echo "False negative"
fi

#Generate a new file: the hash won't match (most likely)
sh generate-randomfile.sh

#Check the checking script
if [ $(sh ./instructions-conform-check.sh) = "nok" ]; then
    echo "True negative"
else 
    echo "False positive"
fi
