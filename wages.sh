cat wages.csv | cut -d ',' -f 1,2 | tr ',' '\t' | egrep "male" | sort -V | uniq > wages.txt


