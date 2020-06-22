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
echo  "----------------------MODIFICAR USUARIO------------------------------"
echo -e  ""
echo -e "Ingrese el nombre del usuario a modificar:"
read user
echo -e "Ingrese el nuevo nombre del usuario a modificar:"
read userNuevo

if grep -qiw $user /etc/passwd; then
        
usermod -l  $userNuevo $user
mv /home/$user  /home/$userNuevo

echo -e "Se modifico nombre correctamente"
echo "El administrador $admin modifico el nombre de $user para $userNuevo,  el $DIA a las $HORA">> historial.txt

else 
echo "No existe usuario"
fi

read -p "Press enter para volver al menu" 
./menu.sh
#FIN BASH