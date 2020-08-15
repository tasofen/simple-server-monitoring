!#/bin/bash
cat /proc/loadavg | awk '{print $1" "$2" "$3}' >> loadavg.log
free | grep Mem | awk '{print $2,$3,$4,$5,$6,$7}' >> meminfo.log