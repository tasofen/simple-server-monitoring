#!/bin/bash

# cpusPer = 100% / 8 cores
cpusPer=12.5

cat loadavg.log | tail -n 60 | awk -v cpusPer="$cpusPer" '{print $1*cpusPer,$2*cpusPer,$3*cpusPer}' > cpu-1h.log
cat meminfo.log | tail -n 60 | awk '{print (1-$3/$1)*100}' > mem-1h.log
cat meminfo.log | tail -n 60 | awk '{print (1-$6/$1)*100}' > mem-1h_2.log
sleep 1
./gnuplot-1h.sh > 1h.png
rm cpu-1h.log mem-1h.log mem-1h_2.log

cat loadavg.log | tail -n 1440 | awk -v cpusPer="$cpusPer" '{print $1*cpusPer,$2*cpusPer,$3*cpusPer}' > cpu-24h.log
cat meminfo.log | tail -n 1440 | awk '{print (1-$3/$1)*100}' > mem-24h.log
cat meminfo.log | tail -n 1440 | awk '{print (1-$6/$1)*100}' > mem-24h_2.log
sleep 1
./gnuplot-24h.sh > 24h.png
rm cpu-24h.log mem-24h.log mem-24h_2.log