#!/bin/dash

echo "The lines should print 9:"
seq 1 9 | ./slippy.py -n '$p'

echo "The lines should print 11 12"
seq 11 17 | ./slippy.py -n '1,2p'

echo "The lines should print 2 3:"
seq 1 5 | ./slippy.py -n '/2/,3p'

echo "The lines should print 1 2 3 4 5:"
seq 1 5 | ./slippy.py -n '/./,2p'