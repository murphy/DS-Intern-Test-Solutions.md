#!/bin/sh

BLACK_PUNISHMENTS=`cat DistrictDisparities2015.csv | grep False | grep BLACK | awk -F, '{sum += $4} END {print sum}'`
TOTAL_BLACKS=`./q1.sh`

PERCENT_BLACK_PUNISHED=`dc -e "2 k ${BLACK_PUNISHMENTS} 100 * ${TOTAL_BLACKS} / p"`

echo "${PERCENT_BLACK_PUNISHED} percent of blacks were punished."

