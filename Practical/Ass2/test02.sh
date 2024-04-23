#!/bin/dash

echo "The lines should print zzz seven times:"
seq 11 17 | ./slippy.py 's/\d+/zzz/'

echo "The lines should print one line zzz and number 12 to 17:"
seq 11 17 | ./slippy.py '1s/\d+/zzz/'

echo "The lines should print zzz instead of number 13 in numbers 11-17:"
seq 11 17 | ./slippy.py '/3/s/\d+/zzz/'

echo "The lines should print zzz seven times:"
seq 11 17 | ./slippy.py '/./s/\d+/zzz/'