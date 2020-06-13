#!/bin/bash

s1=30;
s2=1;
e1=30;
e2=2;

sed -n "/^n=$s1,iteration=$s2$/,/^n=$e1,iteration=$e2$/p" R01_LoN.txt | awk '/^x/'| sed -r 's/;//g' | awk '{print $3}' > x.txt
sed -n "/^n=$s1,iteration=$s2$/,/^n=$e1,iteration=$e2$/p" R01_LoN.txt | awk '/^y/'| sed -r 's/;//g' | awk '{print $3}' > y.txt

