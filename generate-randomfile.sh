#!/bin/bash

#Generates a random 10MB file. For 10 MiB, replace MB by M in the size specification
#/dev/urandom should be fine for most use cases, with the notable exception of a fresh linux installation (see https://security.stackexchange.com/questions/3936/is-a-rand-from-dev-urandom-secure-for-a-login-key/3939#3939 )
head -c 10MB </dev/urandom >randomfile
