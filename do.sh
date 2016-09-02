#!/bin/bash

lex monga.lex
gcc -Wall -o teste lex.yy.c main.c
./teste a.monga
