#!/bin/dash

./tigger-init
./tigger-add
echo test01 > a
echo test01 > b
echo z5378269 > c
./tigger-add a b
./tigger-commit -m '1st commit'
echo change01 >> a
./tigger-add a c
./tigger-commit -m '2nd commit'
./tigger-log
echo Divij >> a
echo Kanwar > d
./tigger-add a d
./tigger-show 1:b
./tigger-show 1:c
./tigger-commit -m '3nd commit'
./tigger-rm a b d
./tigger-status