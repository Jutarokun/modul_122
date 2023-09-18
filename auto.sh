#!/bin/bash

grep -e '^2' export_test.spl \
| cut -f3,4 -d$'\t' \
| tr -d "'" > output.spl