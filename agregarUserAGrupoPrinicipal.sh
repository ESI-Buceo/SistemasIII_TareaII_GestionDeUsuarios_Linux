#!/usr/bin/env bash
#
# Gestion de Usuarios - 
#
# Tarea 2 Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.

#VARIABLES 
admin= $(who)
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
#EJECUCION

clear
echo  "----------------------AGREGAR USER A un GRUPO PRINCIPAL------------------------------"
echo -e  ""
echo -e "Ingrese el nombre del usuario al cual quiere asiganrle un Grupo Prinicipal"

read user   

if grep -qiw $user /etc/passwd 
then

echo -e "Ingrese el nombre del Grupo Princial"
read grupo


if grep -qwi $grupo /etc/group 
then

sudo usermod  -g $grupo $user
echo "Se agrego $user al grupo princial $grupo"

fi
fi

read -p "Press enter para volver al menu" 
    
./menu.sh
#FIN BASH