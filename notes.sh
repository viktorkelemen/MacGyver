#! /bin/bash
# Creating /opening a note file with iA writer
# $HOME/Dropbox/notes/year_month.txt

filename=$HOME/Dropbox/notes/`date "+%Y_%m"`.txt

if [ ! -f $filename ]; then
  touch $filename
fi

open $filename -a /Applications/iA\ Writer\ for\ Mac.app



