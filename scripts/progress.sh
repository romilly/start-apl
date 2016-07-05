#!/usr/bin/env bash
# capture wordcounts in dayfile
# this works on *my* machine :) but it won't on yours without tweaking
# change directory below to project root
cd ~/git/start-apl/
_now=$(date +"%Y%m%d")
wc manuscript/*.md > "progress/$_now.txt"

