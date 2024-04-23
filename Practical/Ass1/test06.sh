#!/bin/dash

./tigger-init
./tigger-checkout b1
echo HeyWhatsUp > a
echo ItsRaining > b
./tigger-commit -m "commit-0"
./tigger-add a b
./tigger-commit -m "commit-1"
seq 2 24 > a
./tigger-commit -a -m "commit-2"
echo TaylorSwift >> b
./tigger-add b
./tigger-status
./tigger-commit -m "commit-3"
./tigger-show 0:b
./tigger-show 0:a
./tigger-show 1:a
./tigger-rm a
./tigger-rm b
./tigger-status