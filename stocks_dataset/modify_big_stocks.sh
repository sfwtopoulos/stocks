#!/bin/bash

for f in *.csv
do
	 sed 's/$/'," ""$f"'/' "$f"
done > combined

#rm ./*.csv

sed -i 's/.csv//' combined
mv combined combined_large.csv


