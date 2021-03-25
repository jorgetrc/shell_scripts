#!/bin/bash

HORA=$(date +"%p")
NOW=$(date +%I:%M)

if [ $HORA == PM ]
then
	echo "Boa Tarde!"
	echo "Hora atual: $NOW $HORA"
fi
