#!/bin/dash

./tigger-init
seq 2 41 > a
./tigger-commit -a -m "commit: a"
./tigger-branch 111
./tigger-branch branch1
./tigger-checkout branch1
seq 8 34 > b
echo ThankYou>> a
./tigger-add a b
./tigger-commit -m "commit: changed a and b"
./tigger-checkout branch1
echo AllToWell > c
echo Willow > d
./tigger-add c d
./tigger-status
./tigger-rm d
./tigger-commit -a "commit: new c commit and rm delete d"
./tigger-log
./tigger-merge b1 -m "merging b1"
./tigger-checkout b1
./tigger-show 0:a
./tigger-show 0:b
./tigger-show 0:c
./tigger-show 0:d
./tigger-merge branch1 -m 'merging branch 1'
./tigger-log 