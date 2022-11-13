# Realización de ejercicios 1.10-pg 52 #

## Ejercicio 1.10.1 ##
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
ordeno desde el mayor al menor para conocer el contig con mayor número de 
lecturas.

## Ejercicio 1.10.2 ##
- Para este ejercicio de igual manera se tuvo que buscar el archivo y se lo realizó
con ayuda del comando *grep -r* el cual permitió buscar el archivo en las carpetas.
Después de encontrar la ruta se aplicó un *cd* para cambiar de directorio, este archivo
 se encontraba *data*. Se aplicó *head* para poder visualizar la información del archivo.
Despues cortamos la columna 1 el cual contenia los *id* y aplicamos un *grep -c -w*
para contar las veces que se registraron los individuos 3 y 27, el *-w* permitía
encontrar solamente al individuo 3 y 27. Después se requeria un script el cual
tomara como entrada el nombre del archivo y el ID de la persona, el cual 
permitíera solo ingresar el ID de la persona para que de como resultado las veces
que se habían registrado y para ello se hizo uso del archivo *count_baboons.sh* el cual
 contenía el script que hacia posible ingresar el ID y daba las veces
 que se habían registrado los individuos. Y por último se escribió otro script el cual
permitiera mostrar las veces que se muestreo a cada individuo. Para esto se hizo uso
de un bucle sin antes guardar guardar los datos del archivo en una varible en ella
estaba la columna de los ID unicos ordenados del menor al mayor. En el for se utilizó
la variable que se creo que era de los ID y se dio la instrucción de ejecutar el
*count_baboons.sh* dentro de otra varible *mycounts*, y con el *echo* se imprimió la
instrucción dada en el bucle.

## Ejercicio 1.10.3 ##  
- Nuevamente se cambió de directorio con ayuda del *cd* para llegar a la carpeta
Saavedra2013. Aquí pedía un script que tomara como entrada uno de los archivos dentro
de la carpeta y que con el mismo script se pudiera determinar el número de filas. Para
ello se tuvo que crear otro archivo al cual se lo llamó *scriptconcatenado.sh* en el 
se colocó un *echo* para que imprimiera el nombre del archivo identificado *$1*, se
colocó otro *echo* para que imprimiera el número de las filas y un *cat* para
visualizar el contenido creado que en este caso fue el número de filas que contenía
cada archivo, se agrego otro *echo* para que imprima la información del número de 
columnas y un *head* para mostrar una fila concatenado con un *tr -d* para el eliminar
el espacio entre columnas y poder contarlas. Ya listo el archivo del script se ejecuto
con un * bash* junto con el archivo que quería saber el número de filas y columnas.
De forma similar se realizó otro script el cual permitió imprimir los números de filas y
columnas de cada archivo. Pero primero se tuvo que agregar todos los archivos en una
variable con el objetivo de facilitar la interación con todos los archivos. Después de
esto se aplicó un *for* y dentro de él se dio la instrucción de imprimir el número de
filas, cuya instrucción estaba en otra variable *mifila*, de igual forma para contar las
columnas se concateno un *head*, *tr -d* y *wc -c* para que de el número de columnas
presentes en los archivos.
Y por último se ejecutó un *bash* aplicando el archivo *scriptconcatenado2.sh* el cual
tenía el script del bucle *for* para ordenar los archivos con mayor filas y columnas,
y con ella se supo el archivo con mayor número de filas y columnas.
