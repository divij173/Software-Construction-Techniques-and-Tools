#!/bin/dash

echo "The lines should print 10-18 with 12 twice:"
seq 10 20 | ./slippy.py '/2/,   /3/p;4d;9q  #  comments'

echo "The lines should print 20-21 twice, 22 92 23 24 94, 25-30 twice:"
seq 20 30 | ./slippy.py '/2/,   /3/p  #  comments;4d;3,5s/2/9/g'