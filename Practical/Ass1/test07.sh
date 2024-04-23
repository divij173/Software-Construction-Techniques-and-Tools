#!/bin/dash

./tigger-init
seq 2 8 > a
./tigger-add a
./tigger-commit -m "commit-a"
./tigger-branch b1
./tigger-checkout b1
seq 9 13 > b
echo helloworld >> a
./tigger-commit -a -m "commit-a/b"
echo worldhello > c
echo SoftwareConstruction > d
./tigger-add c d
./tigger-commit -m "commit-c/d"
./tigger-merge b1 -m "merging b1"
./tigger-checkout b1
echo 111 > a
echo 111 > b
echo 111 > c
echo 111 > d
./tigger-add a b d
./tigger-status
./tigger-rm c
./tigger-commit -m "4th time commit"
./tigger-show 0:a