#!/usr/bin/gnuplot
set terminal png size 1600,900
set yrange [0:100]
set xrange [0:1500]
set ytics 10
set xtics 60
set grid

plot \
"cpu-24h.log" u 1      lw 1 title "cpu - 1m", \
"cpu-24h.log" u 2 w li lc "#009900" lw 2 title "cpu -  5m", \
"cpu-24h.log" u 3 w li lc "red" lw 3 title "cpu - 15m", \
"mem-24h.log" u 1 w li lw 3 title "Mem Free", \
"mem-24h_2.log" u 1 w li lc "black" lw 2 title "Mem Available"
