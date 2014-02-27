#!/bin/bash
nick=$2
logdir=$1
for file in ${logdir}/*.log; do
	filename=$(basename "$file")
	echo -n "${filename%.*} "
	grep "< ${nick}.*>" < $file | wc -l;
done > ${nick}.data

cp plot.gnuplot ${nick}.plot
sed -i -e "s/nick/${nick}/g" ${nick}.plot
gnuplot ${nick}.plot
#rm ${nick}.plot
#rm ${nick}.data
