#!/bin/bash

sudo tcpdump -s 0 host 192.168.1.3 -i ens9 -w ens9-$(date +"%H-%M-%m-%d-%y").pcap