#!/bin/bash

gcc main.c 
echo "LIBC :"
make re 
echo "MYLIB :"
LD_PRELOAD=./libasm.so ./a.out