#!/bin/dash

echo "The lines should print 5 6:"
seq 5 7 | ./slippy.py '$d'

echo "The lines should print 7 8 9 10:"
seq 5 10 | ./slippy.py '1,2d'

echo "The lines should print 1 4 5:"
seq 1 5 | ./slippy.py '/2/,3d'

echo "The lines should print nothing:"
seq 1 5 | ./slippy.py '/./,2d'