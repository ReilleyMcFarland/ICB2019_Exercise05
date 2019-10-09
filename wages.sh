cat wages.csv | cut -d ',' -f 1,2 | tr ',' '\t' | sort -V > wages.txt


