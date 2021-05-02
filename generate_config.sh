#!/bin/bash

node_type=$1

master_ip=$2
master_port=${3:-8080}

self_ip=`hostname -I | cut -d' ' -f1`
self_port=${4:-3000}

echo '[Node]'

if [ "$node_type" == "master" ]; then
        echo -e "master=True\nport=${master_port}"
else
        echo -e "host=${self_ip}\nip=${self_ip}\nport=${self_port}\nmaster=False"
        echo
        echo -e "[Master Node]\nhost=${master_ip}\nip=${master_ip}\nport=${master_port}"
fi
