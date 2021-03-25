#!/bin/bash

DATA=$(date +%Y%m%d%H%M)
BKP="/home/jl/Scripts/*"
BKPDIR="/home/jl/Backup/"

if [ ! -d $BKPDIR ]
then
	echo "Criando diretório..."
        mkdir -p $BKPDIR
fi

DAYS7=$(find /home/jl/Backup/ -ctime -7 -name backup_home\*tar.xz)

    if [ "$DAYS7" ]
    then
        echo "Já existe um backup feito nos ultimos 7 dias!"
	echo""
	echo "Deseja continuar: N/s: "
	read -n1 OP	
	
	case $OP in
		s|S)
			echo "Gerando backup!"
			;;

		N|n)
			echo "Finalizando..."
			exit 0
			;;
		*)
			echo "Opção inválida"
			exit 1
	esac
fi
	if [ -d $BKPDIR ]
	then
		echo "Diretório pronto!"
		echo "<<< Criando Backup >>>"
		tar -cJf "$BKPDIR"backup_home_$DATA.tar.xz --absolute-names $BKP 2>&1 /dev/null
		echo "O backup de nome backup_home_$DATA.tar.xz foi criado em $BKPDIR"
		echo "Backup Concluído!"
fi

