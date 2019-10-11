cat wages.csv | cut -d ',' -f 1,2 | tr ',' '\t' | sort -V > wages.txt
echo "the gender of the highest earner is a:" ""
sort -t, -k4,4 -nr wages.csv | head -n 1 | cut -d ',' -f1
echo ''
echo "the highest earner has the following years of experience:"
sort -t, -k4,4 -nr wages.csv | head -n 1 | cut -d ',' -f2
echo ''
echo "the highest earner has the following wage in thousands of dollars:"
sort -t, -k4,4 -nr wages.csv | head -n 1 | cut -d ',' -f4
echo ''
echo "the gender of the lowest earner is a:"
sort -t, -k4,4 -nr wages.csv | tail -n 2 | head -n 1 | cut -d ',' -f1
echo ''
echo "The lowest earner has the following years of experience:"
sort -t, -k4,4 -nr wages.csv | tail -n 2 | head -n 1 |  cut -d ',' -f2
echo ''
echo "the lowest earner has the following wage in thousands of dollars:"
sort -t, -k4,4 -nr wages.csv | tail -n 2 | head -n 1 | cut -d ',' -f4
echo ""
echo "The following represents the number of females in the top 10 earners:"
sort -t, -k4,4 -nr wages.csv | head -n 10 | egrep "female" | wc -l




