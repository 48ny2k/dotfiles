#!/bin/bash

# redirect stdout and stderr to logfile
# exec >>/var/log/cron.log 2>&1

rsync -avr --delete --exclude-from '/home/mike/Documents/exclude.txt' /home/mike/ /media/mike/_backup/kde-backup/
