#!/bin/bash
chmod 777 /work
chmod 777 /ants_config
cd /ants2/ANTS2/build
. /opt/root/bin/thisroot.sh
runuser --command='./ants2 -f /work/fullSim_1e.txt'
#/bin/bash

