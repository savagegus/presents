#!/usr/local/bin/gnuplot

reset
set terminal pngcairo enhanced font "gill sans,12"  size 800,600
set output 'response_times.png'

set title "Listings, generation times (ms)"
set ylabel "millisec"
set key off

set yrange [0:2000]
set xdata time
set timefmt "%d/%B/%Y:%H:%M:%S"
set format x "%H:%M"

plot \
  'response_times.dat' using 1:2 with points lc rgb "#33ccff", \
   800 t "SLA" lw 2 lc rgb "#ff0000"
