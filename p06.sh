#!/bin/bash
# ANGEL TORRES PÉREZ
#

if (( $EUID != 0 )) # Ejecutar como root
then
 echo "Has d'executar el script com root"
 exit 1 
fi

clear

echo -n "Diguem el nom d'un fitxer que es trobi al directori /etc/default/: "
read fitxer

if [[ -e /etc/default/$fitxer ]]
then
	cp /etc/default/$fitxer /media/$fitxer.$(date +20%y%m%d%H%M)
	exit 0
else
	echo "Error: El fitxer demanat no existeix"
	exit 1
fi
