#!/bin/dash

echo BackToDecember> a
echo GetawayCar> r
echo BlankSpace> b
./tigger-add
./tigger-commit -m '1st commit: test without .tigger'
./tigger-init
./tigger-add a b r
./tigger-commit -m '2nd commit: a b'
echo Bahubali>> r
./tigger-commit -a -m '3nd commit: r'
./tigger-log
echo Style >> r
./tigger-add r
./tigger-branch branch1
./tigger-checkout branch1
echo EndGame >> r
./tigger-add r
./tigger-commit -m '4th commit: r'
./tigger-show 0:r
./tigger-show 1:r
./tigger-merge branch1 -m 'merging branch 1'
./tigger-log 
./tigger-status