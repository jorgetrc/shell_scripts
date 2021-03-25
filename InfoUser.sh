#!/bin/bash

ls /home/$1 > /dev/null 2>&1 || { echo "Usuario Inexistente" ; exit 1; }

echo "=============================================="
ID_USER=$(cat /etc/passwd |grep $1 |cut -d":" -f3)
DESCRIPTION=$(cat /etc/passwd |grep $1 |cut -d":" -f5)
USAGE_HOME=$(du -sh /home/$1 |cut -f1)
LAST_LOGIN=$(lastlog -u $1)
echo "=============================================="
echo "Relatório do Usuário: $1"
echo "UID: $ID_USER"
echo "Nome completo/Descrição do usuário: $DESCRIPTION"
echo ""
echo "Total Usado no \/home\/$1: $USAGE_HOME"
echo ""
echo "Ultimo Login: $LAST_LOGIN"
echo ""
echo "=============================================="
