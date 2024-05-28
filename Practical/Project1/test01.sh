#!/bin/dash

./tigger-init
./tigger-branch 111
./tigger-checkout 111
./tigger-branch crab
./tigger-checkout crab
echo IKnewYouWereTrouble > a
./tigger-add a
./tigger-commit -m "1 st: commit a"
echo Enchanted > b
echo EverythingHasChanged >> a
./tigger-add b
./tigger-commit -a -m "2 nd: commit a b"
./tigger-rm a
./tigger-status
./tigger-merge crab -m 'merging branch crab'
./tigger-status
./tigger-log
./tigger-show :a