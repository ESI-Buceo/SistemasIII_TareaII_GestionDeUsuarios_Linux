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
echo  "----------------------BORRAR GRUPO------------------------------"
echo -e  ""
echo -e "Ingrese el nombre del GRUPO a borrar:"
read grupo

if grep -qiw $grupo /etc/group; then

echo "Grupo existe"
groupdel $grupo
echo -e "Se borro grupo $grupo correctamente"
echo "El administrador $admin borro al grupo $grupo,  el $DIA a las $HORA">> historial.txt

fi

read -p "Press enter para volver al menu" 
    
    
./menu.sh
#FIN BASH