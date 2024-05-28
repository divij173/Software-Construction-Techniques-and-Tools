#!/bin/dash

echo "The lines should print 5 6 zzz:"
seq 5 7 | ./slippy.py '$s/\d/zzz/'

echo "The lines should print zzz zzz 7:"
seq 5 7 | ./slippy.py '1,2s/\d/zzz/'

echo "The lines should print 1 zzz zzz 4 5:"
seq 1 5 | ./slippy.py '/2/,3s/\d/zzz/'

echo "The lines should print 5 lines of zzz:"
seq 1 5 | ./slippy.py '/./,2s/\d/zzz/'