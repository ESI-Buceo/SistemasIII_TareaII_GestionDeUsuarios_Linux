#!/usr/bin/env bash
#
# Gestion de Usuarios - 
#
# Primer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.

#VARIABLES 
admin=$(who)
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`

#EJECUCION

clear
echo  "----------------------CAMBIAR PASSWORD DE UN USUARIO--------------"
echo -e  ""
echo -e "Ingrese el nombre del usuario:"
read user

if grep -qiw $user /etc/passwd; then

echo "El usuario existe"
passwd $user
echo "El administrador $admin cambio la contraseña  del usuario $user,  el $DIA a las $HORA">> historial.txt
    
fi

read -p "Press enter para volver al menu" 

./menu.sh
#FIN BASH
