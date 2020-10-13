#!/bin/sh

python3 discoverecs.py --directory /telegraf/telegraf.d --interval 15 &
sleep 10
./telegraf --config telegraf.conf --config-directory telegraf.d