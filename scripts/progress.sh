#!/usr/bin/env bash
# capture wordcounts in dayfile
# this works on *my* machine :) but it won't on yours without tweaking
# change directory to project root
cd ~/git/start-apl/
_now=$(date +"%Y%m%d")
wc manuscript/*.md > "data/$_now.txt"

