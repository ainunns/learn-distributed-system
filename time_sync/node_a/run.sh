#!/bin/bash

python3 peer_node.py \
	  --name A --listen 0.0.0.0 5000 \
	  --peers A@192.168.0.2:5000 B@192.168.0.3:5001 D@192.168.0.5:5003 \
	  --logger 192.168.0.4 9999 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from A!"
