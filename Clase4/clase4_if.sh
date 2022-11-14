## Ejercicio 1.10.1 ##
## 1. Cambie de directorio a CSB/Unix/sandbox ##
echo "1. Cambie de directorio a CSB/Unix/sandbox"
cd ../../../CSB-master/Unix/sandbox/
ls

## 2. Cuál es el tamaño del archivo Marra2014_data.fasta? ##
echo " 2. Cuál es el tamaño del archivo Marra2014_data.fasta?"
du -h ../data/Marra2014_data.fasta

## 3. Cree una copia de Marra2014_data.sh en sandbox y asigne el nombre de my_file.fasta ##
echo "3. Cree una copia de Marra2014_data.sh en sandbox y asigne el nombre de my_f>"
cp ../data/Marra2014_data.fasta my_file.fasta
ls

## 4. ¿Cuántos contigs se clasifican como isogrupo00036? ##
echo "4. ¿Cuántos contigs se clasifican como isogrupo00036?"
grep -c isogroup00036 my_file.fasta

## 5. Reemplace el delimitador original de dos espacios con una coma ##
echo " 5. Reemplace el delimitador original de dos espacios con una coma"
head -n 4 my_file.fasta
cat my_file.fasta | tr -s '  ' ',' > my_file.tmp
mv my_file.tmp my_file.fasta
echo -e "\n"
head -n 4 my_file.fasta

## 6. ¿Cuántos isogrupos únicos hay en el archivo? ##
echo "6. ¿Cuántos isogrupos únicos hay en el archivo?"
grep '>' my_file.fasta | head -n 3
grep '>' my_file.fasta | cut -d "," -f 4 | head -n 3
echo "Total de isogrupos unicos"
grep '>' my_file.fasta | cut -d ',' -f 4 | uniq | wc -l

## 7. ¿Qué contig tiene mayor número de lecturas (numreads)?¿Cuantas lecturas tiene? ##
echo "7. ¿Qué contig tiene mayor número de lecturas (numreads)?¿Cuantas lecturas tiene?"
grep '>' my_file.fasta | cut -d ',' -f 1,3 | head -n 3
grep '>' my_file.fasta | cut -d "," -f 1,3 | sort -t '=' -n -k 2 | head -n 5
echo "Conting con mayor número de lecturas"
grep '>' my_file.fasta | cut -d "," -f 1,3 | sort -t '=' -n -k 2 -r| head -n 1



