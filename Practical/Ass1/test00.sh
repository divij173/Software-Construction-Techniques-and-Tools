#!/bin/dash

echo Afterglow> a
echo Ours> c
echo SafeAndSound> b
./tigger-init
./tigger-add a b c
./tigger-rm a
./tigger-commit -m "1st commit: delete a commit b c"
./tigger-status
./tigger-log
echo IfThisWasAMovie >> b
./tigger-commit -a -m "2nd commit: updating b"
./tigger-rm c
./tigger-add c
./tigger-commit -a -m "3rd commit: deleting c"
./tigger-log
./tigger-status
echo MessageInTheBottle >> b
./tigger-add b
./tigger-commit -m "4th commit: updating b"
./tigger-log
./tigger-show :b
./tigger-status