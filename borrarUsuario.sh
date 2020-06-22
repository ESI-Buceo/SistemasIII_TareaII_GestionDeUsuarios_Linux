#!/usr/bin/env bash
#
## Gestion de Usuarios - 
#
# Primer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.


#VARIABLES 
admin=$(who)
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
#EJECUCION

clear
echo  "----------------------BORRAR USUARIO------------------------------"
    
echo -e "Ingrese el nombre del usuario a borrar:"
read user

if grep -qiw $user /etc/passwd; then

sudo userdel -r $user
echo -e "Se borro usuario correctamente"
echo "El administrador $admin borro al usuario $user ,  el $DIA a las $HORA">> historial.txt
    
else
    
echo "El usuario no existe"
    
fi

read -p "Press enter para volver al menu" 

    
    
    ./menu.sh
#FIN BASH