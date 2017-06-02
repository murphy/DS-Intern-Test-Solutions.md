#!/bin/sh

tail -n +2 TXDemo2015.csv | awk -F, '{sum += $8} END {print sum}'
