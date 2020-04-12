#!/bin/bash

todays_date=$(date +%F)
last_done_date=$(cat ~/when-did-i-last-do-this.txt 2>/dev/null )

if [ "$todays_date" == "$last_done_date" ]
then
  printf "Already done.\n"
else
  printf "Doing it.\n" && date +%F >> ~/when-did-i-last-do-this.txt
fi
