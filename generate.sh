#!/bin/bash

		# Variables

		input=./lists.txt
		output=./hosts.txt
		TMPFILE=./dumpfile

# En caso de que en el directorio actual ya exista un hosts.txt lo cambia por el nuevo generado.

	if [ -f "$output" ]; then rm $output; fi

# Saca mediante el curl linea por linea el contenido de los repositorios listados en lists.txt
# para redirigirlo al dumpfile $TMPFILE.

	while read line; do
		curl $line >> $TMPFILE;
	done < $input

	sed -i '/^#/d' $TMPFILE # Elimina los comentarios.
	sed -i '/^[[:space:]]*$/d' $TMPFILE # Elimina las líneas vacías.
	sed -i 's/127\.0\.0\.1/0.0.0.0/g' $TMPFILE # Reemplazar los 127.0.0.1 por 0.0.0.0.
	sed -i '/^0\.0\.0\.0*/!s/.*/0.0.0.0 &/' $TMPFILE # Si no comienza con 0.0.0.0, añadelo.
	sed -i 's/0\.0\.0\.0//g' $TMPFILE # Elimina todos los 0.0.0.0.
	# sed -i 's/$/,extreme/' $TMPFILE # Añade la palabra /test/ después de cada nombre de dominio.
	# sed -i 's/^[[:space:]]*//' $TMPFILE # Elimina todos los espacios a principio de la línea.

	sed -i ':a;N;$!ba;s/\n//g' $TMPFILE # Elimina los saltos de línea.


	# El archivo que acepta el NxFilter ha de ser un / .txt / con la siguiente estructura:
	# marca.com,test
	# youtube.com,test

	awk '!seen[$0]++' $TMPFILE > $output # Elimina los dúplicados del dumpfile y manda el restante al hosts.
	sudo rm -r $TMPFILE
	
# Añade al final del host la las etiquetas referentes al localhost en caso de que nos hiciera falta.

	# echo " 127.0.0.1 localhost" >> $output
	# echo " ::1 localhost" >> $output
	echo "" >> $output

# Recuento del total de dominios bloqueado.

	totaldominios=$(awk '!/^#/ && !/^$/{c++}END{print c}' $output | awk '{ len=length($0); res=""; for (i=0;i<=len;i++) { res=substr($0,len-i+1,1) res; if (i > 0 && i < len && i % 3 == 0) { res = "," res } }; print res }')
	echo "Han sido añadidos $totaldominios dominios"
