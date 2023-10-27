#!/bin/bash

# Define a timestamp function
timestamp() {
  # ref: https://www.gnu.org/software/coreutils/manual/html_node/Time-conversion-specifiers.html#Time-conversion-specifiers
  TZ='Europe/Berlin'
  DATE=$(eval 'date +"%F"')
  TIME=$(eval 'date +"%H:%M:%S"')
  TIMEWATCH=$(eval 'date -d "+1 minute" "+%H:%M:00"')
  TIMESTAMPWATCH=$(eval "date -d \"$DATE $TIMEWATCH\" +%s%N")
  TIMESTAMPPC=$(eval "date +%s%N")
  echo "$DATE,$TIME,$TIMEWATCH,$TIMESTAMPPC,$TIMESTAMPWATCH"
}

timestamp
