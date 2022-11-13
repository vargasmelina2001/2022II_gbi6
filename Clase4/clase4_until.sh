## Ejercicio 1.10.3 Plant-Pollinator Networks ##
# 1. Escriba un script que tome uno de estos archivos y determine el número de filas (polinizadores) y el número de columnas (plantas). #
cd ../../../CSB-master/unix/data/Saavedra2013
ls -v

bash ../scriptconcatenado.sh n5.txt

# 2. Escriba un script que imprima los números de filas y columnas para cada red. #
Files=*.txt

for l in $Files
do
	mifila=`cat $l | wc -l`
	micolumna=`head -n 1 $l |tr -d ' ' | tr -d '\n' | wc -c`
	echo "Mis archivos:" $l "Filas:" $mifila "Columnas:" $micolumna
done

# 3. ¿Qué archivo tiene el mayor número de filas?¿Cuál tiene el mayor número de columnas?
echo "El mayor número de columnas"
bash ../../scriptconcatenado2.sh | sort -n -r -k 3 | head -n 1
echo "El mayor número de filas"
bash ../../scriptconcatenado2.sh | sort -n -r -k 2 | head -n 1
