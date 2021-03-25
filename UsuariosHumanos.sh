#!/bin/bash

USER_ID=$(cut -d":" -f3 /etc/passwd)
USER_INFO=$(cut -d":" -f"1,3,6,5" /etc/passwd | tr ":" "\t")
DEFS=$(cat /etc/login.defs |grep -m1 UID_MIN | tr -d [:blank:] |tr -d UID_MIN)
for i in $USER_ID
do
	if [ $i -ge $DEFS ]
	then
		echo -e \t "USER UID DIR_HOME Nome/Descrição" 
		$USER_INFO
	fi

done

