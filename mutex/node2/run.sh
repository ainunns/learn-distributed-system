#!/bin/bash

# no-mutex
python3 ./kv.py --id 2 --tcp 8002 --udp 8102 --peers 192.168.0.2:8001=1,192.168.0.4:8003=3,192.168.0.5:8004=4,192.168.0.6:8005=5 --logger-addr 192.168.0.7:9000 --numnodes 5 --use-mutex 0

# mutex
python3 ./kv.py --id 2 --tcp 8002 --udp 8102 --peers 192.168.0.2:8001=1,192.168.0.4:8003=3,192.168.0.5:8004=4,192.168.0.6:8005=5 --logger-addr 192.168.0.7:9000 --numnodes 5 --use-mutex 1