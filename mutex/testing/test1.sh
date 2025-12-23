#!/bin/bash
#

# Single PUT to node 1
python3 ./kvclient.py --nodes 192.168.0.2:8001,192.168.0.3:8002,192.168.0.4:8003,192.168.0.4:8003,192.168.0.5:8004,192.168.0.6:8005 cmd --node 1  "PUT color blue"


# GET from node 2
python3 ./kvclient.py --nodes 192.168.0.2:8001,192.168.0.3:8002,192.168.0.4:8003,192.168.0.4:8003,192.168.0.5:8004,192.168.0.6:8005 cmd --node 2   "GET color"


# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 192.168.0.2:8001,192.168.0.3:8002,192.168.0.4:8003,192.168.0.4:8003,192.168.0.5:8004,192.168.0.6:8005 race  "PUT color blue" "PUT color red"


# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 192.168.0.2:8001,192.168.0.3:8002,192.168.0.4:8003,192.168.0.4:8003,192.168.0.5:8004,192.168.0.6:8005 getall color