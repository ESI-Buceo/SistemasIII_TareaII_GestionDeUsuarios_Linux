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

	echo -e "         ------------Menu Administrar Grupos -----------------------------------------------------"

	echo ""

    echo -e "\t1)  Crear Grupo"

	echo -e "\t2)  Borrar Grupo"

    echo -e "\t3)  Ver Grupos"

    echo -e "\t4)  Volver al menu principal"

	echo -e "\tQ)  Salir"

	echo ""

	echo -e "\t Digite una opcion: "

	read OP

	case "$OP" in

			1)
            sh logs.sh "Crear Grupos"
			#Redirecciona al bash de ver de Usuario
			./crearGrupo.sh
					;;

			2)
            sh logs.sh "Borrar Grupos"
			#Redirecciona al bash de crear Usuario
			./borrarGrupo.sh
					;;
			3)
            sh logs.sh "Ver Grupos"
			#Redirecciona al bash de borrar usuario
			./verGrupos.sh
					;;

            4)
            sh logs.sh "Volver al menu principal"
			#Redirecciona al bash de modificar usuario
			./menu.sh
                    ;;

			q|Q) exit     ;;

			*) echo -e "\t Opcion inválida!"

			
			./menu.sh

	esac


    