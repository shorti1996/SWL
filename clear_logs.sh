#!/bin/bash

for f in */logs/*.log ;
do `echo ""` > $f ; echo "$f cleared" ;
done
