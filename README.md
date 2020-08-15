## Install
```bash
crontab -e
* * * * * cd /path/to/monitoring && ./newstat.sh > /dev/null 2>&1
```

## Create graph
```bash
cd /path/to/monitoring && ./graph.sh
```
## Result
![monitoring graph](https://github.com/tasofen/simple-server-monitoring/raw/master/demo/24h.png)
