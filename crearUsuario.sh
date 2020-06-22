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
echo  "----------------------CREAR USUARIO------------------------------"
echo -e  "Crear usuario"

grupo="Grupo"

if grep -qiw $grupo /etc/group;then
echo""  
else

sudo groupadd $grupo

fi

echo "Ingrese nombre del usuario nuevo"
read user

if grep -qiw $user /etc/passwd; then

echo "Usuario Existe"
else

sudo useradd -d  /home/$user -g Grupo -m -s /bin/bash  $user
echo "Usuario creandose..."
echo "Asignar una contraseña a $user : "
passwd $user

echo "El administrador $admin creo  usuario $user en el sistema,  el $DIA a las $HORA">> historial.txt   

fi
    
read -p "Press enter para volver al menu" 

./menu.sh
#FIN BASH
