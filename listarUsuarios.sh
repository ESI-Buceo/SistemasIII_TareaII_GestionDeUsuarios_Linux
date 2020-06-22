#!/usr/bin/env bash
#
# Gestion de Usuarios - 
#
# Primer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.


## ------------------------------- VARIABLES -------------------------------- #
SEP=":"
admin=$(who)


#EJECUCION
clear
echo -e "----------------LISTAR USUARIOS---------------------------"
echo ""
echo ""
#Envio lista a listemp.txt

getent passwd {1000..60000} > listemp.txt 


# Linea de inicio

while read -r linea # Início del while

do

# Linea que empiece con "#"...continue

[ "$(echo $linea | cut -c1)" = "#" ] && continue

# Linea vacia ?...continue

[ ! "$linea" ] && continue

# Extraccion de dato


echo -e "--------------------"

NOMBRE="$(echo "$linea" | cut -d $SEP -f 1)" # toma el nombre
    
# Muestra Datos

echo -e "USUARIO: $NOMBRE"

done < "listemp.txt" # Fin del while 

echo -e "--------------------"

read -p "Press enter para volver al menu" 

./menu.sh