#!/bin/dash

./tigger-init
./tigger-branch a1
./tigger-checkout a1
echo BadBlood > a
./tigger-add a
./tigger-commit -m "1 st: commit a"
./tigger-log
./tigger-status
echo ShakeItOff >> a
./tigger-commit -a -m "2 st: commit new a"
seq 2 12 > a
./tigger-add a
./tigger-commit -m "3 rd: commit sequence a"
./tigger-log
./tigger-status
./tigger-merge a1 -m 'merging branch a1'
./tigger-log
./tigger-status