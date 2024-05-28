#!/bin/dash

echo "The lines should print the number 10:"
seq 10 17 | ./slippy.py -n '1p'

echo "The lines should print the number 13:"
seq 10 17 | ./slippy.py -n '/3/p'

echo "The lines should print the number 10 to 17:"
seq 10 17 | ./slippy.py -n '/./p'