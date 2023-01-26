#!/bin/bash

# Credit to SEC 335 either Devin Paden or Mackenzie Marsocci for the following script

# Parameters used in running script Example: ./portscanner.sh sweep.txt mytxpports.txt
hostfile=$1
portfile=$2

# Prints host,port
echo "host,port"
for host in $(cat $hostfile); do
        for port in $(cat $portfile); do
                timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host,$port"
        done
done
