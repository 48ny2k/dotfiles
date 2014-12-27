#!/bin/bash
# rsync using variables

SOURCEDIR=/home/mike/.config/
DESTDIR=/home/mike/backup/.config/

rsync -avh --exclude="*.bak" $SOURCEDIR $DESTDIR
