#!/bin/bash

HOST=$(hostname)
DATE=$(date "+%d-%m-%y  %H:%M")
ACTIVE=$(uptime -s)
KERNEL=$(uname -r)
CORES=$(cpu-info |head -n5)
MODELCPU=$(cat /proc/cpuinfo |grep "model name" |head -n1)
MEM=$(expr $(cat /proc/meminfo | grep "MemTotal" | tr -d ' ' |cut -d":" -f2 |tr -d kB) / 1024)
DISK=$(df -h |egrep -v '(/loop*|tmpfs|udev)')

echo "--------------------------------------------"
echo "Relatorio da Máquina: $HOST"
echo "Data/Hora: $DATE"
echo "--------------------------------------------"
echo "Máquina ativa desde: $ACTIVE"
echo "--------------------------------------------"
echo ""
echo "Memória Total: $MEM MB"
echo ""
echo "Partições:"
echo "$DISK"
