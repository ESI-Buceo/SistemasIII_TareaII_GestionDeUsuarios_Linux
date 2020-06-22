#!/usr/bin/env bash
#
# Gestion de Usuarios - 
#
# Tarea 2 Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.


dirLog="historial.txt"
fecha=`date +%F`
hora=`date +%H:%M`

echo "$1 => $fecha $hora " >> $dirLog