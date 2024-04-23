#!/bin/dash

echo "The lines should print nothing:"
seq 10 17 | ./slippy.py 'd'

echo "The lines should print numbers 11 to 17:"
seq 10 17 | ./slippy.py '1d'

echo "The lines should print 10-17 except 13:"
seq 10 17 | ./slippy.py '/3/d'

echo "The lines should print nothing:"
seq 10 17 | ./slippy.py '/./d'