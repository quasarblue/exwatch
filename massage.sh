#!/bin/bash
sed -E 's/;(-)?\$/;\1/' $1| sed -E 's/\.([0-9]+);/\1;/g'| sed -E 's/\.([0-9]+);/\1;/g' | sed -E 's/\.([0-9]+);/\1;/g' |sed -E 's/,([0-9]+);/\.\1;/g' | sed -E 's/;--/;null/'| sed -E 's/;--/;null/' | sed -E 's/;-([^0123456789])/;null\1/'| sed -E 's/FALSO/0/g'| sed -E 's/VERO/1/g' |cut -d';' -f 2,3,4,5,6,7,8,9 |sed -E 's/;$/;null/'
