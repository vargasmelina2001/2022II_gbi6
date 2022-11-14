## Ejercicio 1.10.2 Hormone Levels in Baboons ##
# 1.¿Cuántas veces se registraron los niveles de los individuos 3 y 27? #
echo "1.¿Cuántas veces se registraron los niveles de los individuos 3 y 27?"
cd ../../../
grep -r "Gesquiere2011" CSB-master/unix/
cd CSB-master/unix/data/
ls
head -n 3 Gesquiere2011_data.csv
cut -f 1 Gesquiere2011_data.csv | head -n 4
echo -e "\n"
echo "Individuo 3"
cut -f 1 Gesquiere2011_data.csv | grep -c -w 3
echo "Individuo 27"
cut -f 1 Gesquiere2011_data.csv | grep -c -w 27
echo "2. Escribir un script tomando como entrada el nombre del archivo y el ID de la persona y devolviendo el número de registros para ese ID."
# 2. Escribir un script tomando como entrada el nombre del archivo y el ID de la persona y devolviendo el número de registros para ese ID. #
echo "Individuo 3"
bash ../solutions/count_baboons.sh Gesquiere2011_data.csv 3
echo "Individuo 27"
bash ../solutions/count_baboons.sh Gesquiere2011_data.csv 27
# cut -f 1 $1 | grep -c -w $2 #

echo -e "\n"
# 3. Escriba un script que devuelva el número de veces que se muestreó a cada individuo. #
echo " 3. Escriba un script que devuelva el número de veces que se muestreó a cada individuo."
echo "Lista de individuos"
tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq
echo "Número de veces que se muestro a cada individuo"
myIDS=`tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`
for id in $myIDS
do
	mycounts=`bash ../solutions/count_baboons.sh Gesquiere2011_data.csv $id`
	echo "ID:" $id "counts:" $mycounts
done

