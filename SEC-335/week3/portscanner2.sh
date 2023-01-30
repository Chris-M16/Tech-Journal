#!/bin/bash

# Credit to SEC 335 either Devin Paden or Mackenzie Marsocci for the following script

# Modified script to scan /24 network based on first three octets

# Parameters used in running script Example: ./portscanner.sh sweep.txt mytxpports.txt
ip=$1
port=$2

# Prints host,port
echo "ip,port"
for x in $(seq 1 254) 
do
	timeout .1 bash -c "echo >/dev/tcp/$ip.$x/$port" 2>/dev/null && echo "$ip.$x,$port"
done
