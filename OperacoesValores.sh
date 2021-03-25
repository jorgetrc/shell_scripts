#!/bin/bash
clear
read -p "1º valor: " V1
read -p "2º valor: " V2
echo ""
echo "Escolha umma Operação:"
echo "1 = Soma"
echo "2 = Subtração"
echo "3 = Multiplicação"
echo "4 = Divisão"
echo "q = Sair"
echo ""
read -p "Opção: " OPCAO 
echo ""

case "$OPCAO" in 
	1)
		EQ=$(expr $V1 + $V2)
		echo "Soma = $EQ"
		echo""
		;;
	2)
		EQ=$(expr $V1 - $V2)
		echo "Subtração = $EQ"
		echo""
		;;
	3)
		MULT=$(expr $V1 "*" $V2)
		echo "Multiplicação = $MULT"
		echo ""
		;;
	4)
		EQ=$(expr $V1 / $V2)
		RES=$(expr $V1 % $V2)
		echo "Divisão = $EQ"
		echo "Resto da divisão = $RES"
		echo ""
		;;
		
	q)
		echo "Saindo..."
		exit 0
		;;
	*)
		echo "Opção inválida."
esac
