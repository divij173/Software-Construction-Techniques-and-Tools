#!/bin/dash

echo "The lines should print the number from 11 to 17 twice:"
seq 11 17 | ./slippy.py 'p'

echo "The lines should print the number 11 twice:"
seq 11 17 | ./slippy.py '1p'

echo "The lines should print the number 13 twice:"
seq 11 17 | ./slippy.py '/3/p'

echo "The lines should print all numbers twice:"
seq 11 17 | ./slippy.py '/./p'