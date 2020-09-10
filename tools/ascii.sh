#!/bin/bash

# Simple tool to print all of the ascii table in normal and reverse video
# https://unix.stackexchange.com/questions/15139/how-to-print-all-printable-ascii-chars-in-cli

for((i=32;i<=127;i++)) do 
    eval echo -ne $\'\\$((i/64*100+i%64/8*10+i%8))\'; 
done; 
echo -ne "\n\e[07m"
for((i=32;i<=127;i++)) do 
    eval echo -ne $\'\\$((i/64*100+i%64/8*10+i%8))\'; 
done; 
echo -ne "\n\e[0m"