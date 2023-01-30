#!/bin/bash

# Parameters used in running script Example: ./portscanner.sh 10.0.5 10.0.5.20
dns=$1
ip=$2

# Prints host,port
for x in $(seq 1 254) 
do
	nslookup "$dns.$x"  "$ip" |grep name
done
