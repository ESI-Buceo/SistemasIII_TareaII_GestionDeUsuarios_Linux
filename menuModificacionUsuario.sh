#!/usr/bin/env bash
#
# Gestion de Usuarios - 
#
# Primer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.

## ------------------------------- VARIABLES -------------------------------- #


	ARCHIVO_LISTA_DE_SERVICIOS="litaDeUsuarios.txt"
	ALTA="altaUsuario.sh"

	DIA=`date +"%d/%m/%Y"`
	HORA=`date +"%H:%M"`

	SEP=":"

    # ---------------------------VALIDACIONES --------------------------------- #
	

    if [ $(whoami) != "root" ]; then #Comando whoami, usuario actual que esta logueado en el sistema e inicio el bash
		echo "Tienes que ser root para ejecutar este script"
		echo "Ejecuta "sudo su" usuario y contraseñra para ser root"
		exit 1
    fi

	#CAMBIA LOS PERMISOS A TODOS LOS BASH PARA PODER EDITAR, EJECUTAR, LEER.
	find . -type f -exec chmod 777 {} \;

    if [ ! -e "$HISTORIAL" ]; then

    	touch historial.txt

    fi

    
#MENU--------------------------------------------------------------------------- #

    clear

    echo ""

	echo -e "         ------------Menu modificacion de Usuario -----------------------------------------------------"

	echo ""

    echo -e "\t1)  Cambiar nombre"

	echo -e "\t2)  Cambiar contraseña"

    echo -e "\t3)  Agregar a un grupo principal"

	echo -e "\t4)  Agregar a un grupo secundario"

    echo -e "\t5)  Ver Usuario"

    echo -e "\t6)  Volver al menu principal"

	echo -e "\tQ)  Salir"

	echo ""

	echo -e "\t Digite una opcion: "

	read OP

	case "$OP" in

			1)
            sh logs.sh "Cambiar nombre"
			#Redirecciona al bash de ver de Usuario
			./modificarUsuario.sh
					;;

			2)
            sh logs.sh "Cambiar contraseña"
			#Redirecciona al bash de crear Usuario
			./cambiarPass.sh
					;;
			3)
            sh logs.sh "Agregar a un grupo principal"
			#Redirecciona al bash de borrar usuario
			./agregarUserAGrupoPrinicipal.sh
					;;

			4)
            sh logs.sh "Agregar a un grupo secundario"
			#Redirecciona al bash de modificar usuario
			./agregarUserAGrupoSecundario.sh
					;;


             5)
            sh logs.sh "Ver Usuario"
			#Redirecciona al bash de modificar usuario
			./verUsuario.sh
                    ;;

            6)
            sh logs.sh "Volver al menu principal"
			#Redirecciona al bash de modificar usuario
			./menu.sh
					;;
 
 



			q|Q) exit     ;;

			*) echo -e "\t Opcion inválida!"

			
			./menu.sh

	esac


    