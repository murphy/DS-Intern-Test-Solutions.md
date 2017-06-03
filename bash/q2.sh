#!/bin/sh

BLACK_PUNISHMENTS=`cat DistrictDisparities2016.csv | grep False | grep BLACK | awk -F, '{sum += $4} END {print sum}'`
TOTAL_BLACKS=`tail -n +2 TXDemo2016.csv | awk -F, '{sum += $8} END {print sum}'`

PERCENT_BLACK_PUNISHED=`dc -e "2 k ${BLACK_PUNISHMENTS} 100 * ${TOTAL_BLACKS} / p"`

echo "${PERCENT_BLACK_PUNISHED} percent of blacks were punished."

