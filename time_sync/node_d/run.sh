#!/bin/bash

python3 peer_node.py \
	  --name D --listen 0.0.0.0 5003 \
	  --peers A@192.168.0.2:5000 B@192.168.0.3:5001 D@192.168.0.5:5003 \
	  --logger 192.168.0.4 9999 \
	  --offset-ms 600
