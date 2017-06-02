#!/bin/sh

# OPTION 1 using DPETALLC.

# POPULATION_2015=`tail -n +2 TXDemo2015.csv | awk -F, '{sum += $3} END {print sum}'`
# POPULATION_2016=`tail -n +2 TXDemo2016.csv | awk -F, '{sum += $3} END {print sum}'`

# OPTION 2 using the sum of the individal racial numbers.

POPULATION_2015=`tail -n +2 TXDemo2015.csv | awk -F, '{sum += $4+$5+$6+$7+$8+$11} END {print sum}'`
POPULATION_2016=`tail -n +2 TXDemo2016.csv | awk -F, '{sum += $4+$5+$6+$7+$8+$11} END {print sum}'`

PUNISHMENTS_2015=`cat DistrictDisparities2015.csv | grep False | grep -v "TWO OR MORE RACES" | grep -v "Special Education" | grep -v "Economic Disadvantage" | awk -F, '{sum += $4} END {print sum}'`
PUNISHMENTS_2016=`cat DistrictDisparities2016.csv | grep False | grep -v "TWO OR MORE RACES" | grep -v "Special Education" | grep -v "Economic Disadvantage" | awk -F, '{sum += $4} END {print sum}'`

PERCENT_PUNISHED_2015=`dc -e "2 k ${PUNISHMENTS_2015} 100 * ${POPULATION_2015} / p"`
PERCENT_PUNISHED_2016=`dc -e "2 k ${PUNISHMENTS_2016} 100 * ${POPULATION_2016} / p"`
PERCENT_PUNISHED=`dc -e "2 k ${PERCENT_PUNISHED_2015} ${PERCENT_PUNISHED_2016} + 2 / p"`

echo "Average punished (2015 & 2016): ${PERCENT_PUNISHED}%"
