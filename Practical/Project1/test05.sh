#!/bin/dash

./tigger-init
./tigger-commit -a -m "0 commit: testing nothing"
./tigger-add 
echo HoneySingh > a
seq 2 17 > b
./tigger-add a b
./tigger-commit -m "1 commit: commit a b"
./tigger-branch b1
./tigger-checkout b1
echo 21JumpStreet> d
./tigger-add d
./tigger-commit -a -m "2 commit: commit d"
./tigger-log
./tigger-status
./tigger-rm a
seq 7 13 > c
./tigger-add c
./tigger-rm c
./tigger-commit -m "3 commit: commit c"
./tigger-log
./tigger-status