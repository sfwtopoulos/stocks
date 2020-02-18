#!/bin/bash

#curl https://www.nasdaq.com/api/v1/historical/MSFT/stocks/2010-01-01/2020-01-01 > MSFT.csv 

while read l; do
	echo $l
	curl https://www.nasdaq.com/api/v1/historical/$l/stocks/2010-01-01/2020-01-01 > ./csv_data/$l.csv
done < sp100.list

for f in *.csv
do
 sed 's/$/'," ""$f"'/' $f
done > combined

rm ./*.csv

sed -i 's/.csv//' combined
mv combined combined.csv
