#!/bin/bash

# no-mutex
python3 ./kv.py --id 5 --tcp 8005 --udp 8105 --peers 192.168.0.2:8001=1,192.168.0.3:8002=2,192.168.0.4:8003=3,192.168.0.5:8004=4 --logger-addr 192.168.0.7:9000 --numnodes 5 --use-mutex 0

# mutex
python3 ./kv.py --id 5 --tcp 8005 --udp 8105 --peers 192.168.0.2:8001=1,192.168.0.3:8002=2,192.168.0.4:8003=3,192.168.0.5:8004=4 --logger-addr 192.168.0.7:9000 --numnodes 5 --use-mutex 1