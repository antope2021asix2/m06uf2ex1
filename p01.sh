#!/bin/bash
# ANGEL TORRES PÉREZ
#

if (( $EUID != 0 )) # Ejecutar como root
then
 echo "Has d'executar el script com root"
 exit 1 
fi

opc="s"
while [[ $opc == "s" ]]
do
clear

echo -n "Diguem el nom del usuari que vols modificar la contrasenya: "
read usuari

passwd $usuari
if (( $? == 0 ))
then
	echo "Contrasenya canviada"
fi

echo -n "Vols continuar?(s/n) "
read opc
done

exit 1
