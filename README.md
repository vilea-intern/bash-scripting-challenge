# bash-scripting-challenge
## Getting started
First, navigate to the repository root folder.

To generate a random 10MB file, run (for more details, you can inspect the script):

`sh generate-randomfile.sh`

This will create a new file, *randomfile*. To hash it using md5, you can run:

`sh generate-hash.sh`

This will create a new file, *randomfile-hash*. Again, the script itself contains a few more usage details. You can then check if the checksum of *randomfile* and the one contained in *randomfile-hash* match by running:

`sh instructions-conform-check.sh`

It will output **ok** if they match, **nok** otherwise. 

## Tests
Running:

`sh test.sh`

will check if md5sum behaves as expected by computing the checksum of a known string ([source](https://en.wikipedia.org/wiki/MD5#Applications)), it will check that the script outputs **ok** if the *randomfile-hash* contains the hash of *randomfile*, it will check that the script will output **nok** if *randomfile* content is newly generated.
