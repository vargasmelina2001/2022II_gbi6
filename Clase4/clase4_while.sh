## Ejercicio 1.10.2 Hormone Levels in Baboons ##
# 1.¿Cuántas veces se registraron los niveles de los individuos 3 y 27? #
cd ../../../
grep -r "Gesquiere2011" CSB-master/unix/
cd CSB-master/unix/data/
ls
head -n 3 Gesquiere2011_data.csv
cut -f 1 Gesquiere2011_data.csv | head -n 4
cut -f 1 Gesquiere2011_data.csv | grep -c -w 3
cut -f 1 Gesquiere2011_data.csv | grep -c -w 27
echo "Pregunta 2"
# 2. Escribir un script tomando como entrada el nombre del archivo y el ID de la persona y devolviendo el número de registros para ese ID. #
bash ../solutions/count_baboons.sh Gesquiere2011_data.csv 3
bash ../solutions/count_baboons.sh Gesquiere2011_data.csv 27
# cut -f 1 $1 | grep -c -w $2 #


# 3. Escriba un script que devuelva el número de veces que se muestreó a cada individuo. #
tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq
myIDS=`tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`
for id in $myIDS
do
	mycounts=`bash ../solutions/count_baboons.sh Gesquiere2011_data.csv $id`
	echo "ID:" $id "counts:" $mycounts
done

