#!/bin/bash
set -e

DATAFILE=/hamonize_monitoring/data.txt
TMPFILE=/hamonize_monitoring/tmp.txt
UUIDLIST=/hamonize_monitoring/hostlist.txt
UPTIME=`awk '{print $1}' /proc/uptime | sed 's/\..*//'`

I=0
while IFS= read -r line;
do
       	I=$(($I+1)) && let CPUVAL=$I*66*99%101 && let MEMVAL=$I*33*8%101 && let DFVAL=$I*31*7%101 && let SWPVAL=$I*15*19%101 && HOST=$line && sed 's/vpc/'$HOST'/g; s/UPTIME/'$UPTIME'/g; s/CPUVAL/'$CPUVAL'/g; s/MEMVAL/'$MEMVAL'/g; s/DFVAL/'$DFVAL'/g; s/SWPVAL/'$SWPVAL'/g' $DATAFILE > $TMPFILE && curl -i -XPOST 'http://192.168.0.146:8086/write?db=collectd' --data-binary @$TMPFILE;

done < $UUIDLIST
