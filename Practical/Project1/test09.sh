#!/bin/dash

./tigger-init
./tigger-commit -m 'commit 0'
touch a b c d e f g h i j
seq 2 4 > a
seq 5 7 > b
seq 8 9 > c
./tigger-add a b h i 
seq 9 10 > a
seq 10 11 > d
./tigger-add a b
./tigger-log
rm e 
rm f
rm g
./tigger-rm h
./tigger-rm i
rm j
./tigger-commit -m 'commit 2'
./tigger-status