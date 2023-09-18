#!/bin/bash
# Weil Herr Vogel gesagt hat ich muss.
IFS=$'\n'; for x in $(grep \'[A-Z][0-9][0-9][0-9][0-9][0-9][0-9]\' Export_test.spl 2> /dev/null); do y=$(printf "${x}" | awk -F\' '{print $4}' | grep '^[2]'); if [ ! -n "${y}" ]; then printf "${x}\n" | awk -F\' '{print $2"\t\t"$4}' | tr -d "\'" >> Export_filtered.txt; fi; done