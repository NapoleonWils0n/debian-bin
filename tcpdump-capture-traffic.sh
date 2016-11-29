#!/bin/bash

sudo tcpdump -s 0 host 192.168.1.3 -i enp0s26f7u1u3 -w tcpdump-$(date +"%H-%M-%m-%d-%y").pcap
