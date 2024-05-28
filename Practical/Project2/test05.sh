#!/bin/dash

echo "The lines should print 11 12 13 14 15 16 17 17:"
seq 11 17 | ./slippy.py '$p'

echo "The  lines should print 11 11 12 12 13 14 15 16 17:"
seq 11 17 | ./slippy.py '1,2p'

echo "The lines should print 11 12 12 13 13 14 15 16 17:"
seq 11 17 | ./slippy.py '/2/,3p'

echo "The lines should print every line twice:"
seq 11 17 | ./slippy.py '/./,2p'