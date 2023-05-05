# blocklist
Greetings to Robin-Sch / blocklist 

Primero has de ejecutar ./select.sh para elegir dentro del whiptail los repositorios que deseas copiar
dentro del $input = ./lists.txt que será utilizado en el ./generate.sh que simplemente se trata de un while
haciendo curl's a los repositorios que están en el lists.txt generado anteriormente.

Para luego hacer un volcado dentro de un archvio temporal ( $TEMPFILE = dumpfile ) el cual posteriormente será depurado y volcado ( $output = ./hosts.txt ) para evitar
repeticiones de dominios. Y evitar hacer el archivo mñas pesado de lo necesario. Y al final aparecerá el recuento de los nombres de dominios introducidos dentró del archivo.

Acúerdate de que te puede dar problemas de permisos por lo tanto:

  ~/sudo chmod 744 select.sh
  ~/sudo chmod 744 generate.sh
