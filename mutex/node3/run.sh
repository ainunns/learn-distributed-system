#!/bin/bash

# no-mutex
python3 ./kv.py --id 3 --tcp 8003 --udp 8103 --peers 192.168.0.2:8001=1,192.168.0.3:8002=2,192.168.0.5:8004=4,192.168.0.6:8005=5 --logger-addr 192.168.0.7:9000 --numnodes 5 --use-mutex 0

# mutex
python3 ./kv.py --id 3 --tcp 8003 --udp 8103 --peers 192.168.0.2:8001=1,192.168.0.3:8002=2,192.168.0.5:8004=4,192.168.0.6:8005=5 --logger-addr 192.168.0.7:9000 --numnodes 5 --use-mutex 1