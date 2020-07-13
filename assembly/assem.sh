#! /bin/bash

echo "NASM compiling:"

nasm -f elf64 -o $1.o $1.nasm

echo "Linking:"
ld  -o $1 $1.o
