#!/usr/bin/gnuplot
set terminal png size 1600,900
set yrange [0:100]
set ytics 10
set xtics 5
set grid


plot \
"cpu-1h.log" u 1 w li lw 2 title "cpu - 1m", \
"cpu-1h.log" u 2 w li lw 2 title "cpu -  5m", \
"cpu-1h.log" u 3 w li lw 2 title "cpu - 15m", \
"mem-1h.log" u 1 w li lw 3 title "Mem Free", \
"mem-1h_2.log" u 1 w li lc "black" lw 2 title "Mem Available"
