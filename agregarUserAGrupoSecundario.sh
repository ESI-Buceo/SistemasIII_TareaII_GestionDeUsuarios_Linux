#!/usr/bin/env bash
#
# Gestion de Usuarios - 
#
# Primer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.

#VARIABLES 
admin= $(who)
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
#EJECUCION

clear
echo  "----------------------AGREGAR USER A un GRUPO------------------------------"
echo -e  ""
echo -e "Ingrese el nombre del GRUPO secundario:"
read grupo

#AGREGAR A GRUPO PRINCIPAL
if grep -qiw $grupo /etc/group; then

echo "Grupo existe"
echo -e "Ingrese el nombre del USUARIO:"
read user

if grep -qiw $user /etc/passwd; then

echo "El usuario existe"
usermod  -aG $grupo $user
echo -e "Se agrego $user al  grupo $grupo  SECUNDARIO correctamente"
echo "El administrador $admin agrego  a $user al Grupo Primario $grupo,  el $DIA a las $HORA">> historial.txt

fi
fi

read -p "Press enter para volver al menu" 
    
    
    ./menu.sh
#FIN BASH