## Realización de ejercicios 1.10-pg 52 ##
- En el ejercicio 1.10.1 se tuvo que realizar un cambio de directorio con *cd*
 para encontrar el archivo Marra_data.fasta el cual se encontraba 
CSB-master/unix/sandbox. Después haber encontrado el archivo enlistamos para
 verificar su ubicación, seguido ejecutamos el comando *du -h* el cual nos 
permitió conocer la cantidad de espacio en disco utilizado por directorios
 y archivos. Después se creó una copia del archivo en *sandbox* con el nombre
 de *my_file.fasta con ayuda del *cp*, nuevamente se volvió a enlistar 
para la verificación del archivo. Seguido se contó el número de 
clasificación de los *isogroup00036* esto fue posible aplicando el comando 
*grep -c <<archivo>>* que permite contar las veces que se tiene esa palabra. 
El contenido del archivo estaba separado por dos espacios por lo que fue necesario
 cambiar los espacíos por una coma para ello se usa el *cat, tr -s y head -n* 
para imprimir los cambios hechos por tr el cual se junto la traslocación del 
espacio con la coma y el head ayudo a mostrar la cantidad de información que se 
requira para confirmar la correcta aplicación del comando, pero no se pudo guardar 
directamente en el archivo *my_file.fasta* por lo que se tuvo que crear un archivo
 temporal, esto porque el archivo de interes estába canalizando a un proceso 
que tiene redirección, en lugar de redirigir la salida de la canalización 
como un todo. En el paso 6 nos pedía contar los isogrupos unicos, para ello nos 
valimos del comando *grep '>'* el cual nos permitió ver la información de cada 
fila y columna para poder cortar la columna 4 para poder contar los isogrupos 
unicos por filas. Y finalmente se volvió a buscar la información en el archivo 
con ayuda del *grep '>'* para poder cortar las columnas que contenían el mayor 
número de lecturas y la que contenía el número de lectura, pero para ello se 
ordeno desde el mayor al menor para conocer el contig con mayor número de lecturas.
