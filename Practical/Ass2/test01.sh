#!/bin/dash

echo "The lines should print 11:"
seq 11 17 | ./slippy.py '1q'

echo "The lines should print 11 to 17:"
seq 11 17 | ./slippy.py '/3/q'

echo "The lines should print 11:"
seq 11 17 | ./slippy.py '/./q'