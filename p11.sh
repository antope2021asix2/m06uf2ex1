#!/bin/bash
# ANGEL TORRES PÉREZ
#

if (( $EUID != 0 )) # Ejecutar como root
then
 echo "Has d'executar el script com root"
 exit 1 
fi

clear

wget http://www.collados.org/asix2/m06/uf2/alumnes.ods

libreoffice --headless --convert-to csv alumnes.ods

for noms in $(cut -d ',' -f 2 alumnes.csv)
do
	contra=$(pwgen 10 1)
	echo "$noms $contra" >> contrasenyes_alumnes.txt
done

exit 0
