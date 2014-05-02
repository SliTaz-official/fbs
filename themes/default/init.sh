#!/bin/sh
# Expand the progress bar 

width=$(fbset | fgrep "geometry" | cut -d " " -f 2)
bar_width=$(($width - 160))

sed -i s"/BAR_WIDTH=.*/BAR_WIDTH=$bar_width/"  \
	$(dirname $0)/splash.cfg
