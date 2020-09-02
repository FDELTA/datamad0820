* Imprime en consola `Hello World`.

Echo "Hello World"

* Crea un directorio nuevo llamado `new_dir`.

mkdir new_dir

* Elimina ese directorio.

rm -r new_dir

* Copia el archivo `sed.txt` dentro de la carpeta lorem a la carpeta lorem-copy. 

cp ~/desktop/ironhack/datamad0820/module-2/lab-bash/lorem/sed.txt ~/desktop/ironhack/datamad0820/module-2/lab-bash/lorem-copy 

* Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante `;`. 

cp ~/desktop/ironhack/datamad0820/module-2/lab-bash/lorem/ ~/desktop/ironhack/datamad0820/module-2/lab-bash/lorem-copy 

* Muestra el contenido del archivo `sed.txt` dentro de la carpeta lorem.

open sed.txt or cat sed.text

* Muestra el contenido de los archivos `at.txt` y `lorem.txt` dentro de la carpeta lorem. 

open 'at.txt' 'lorem.txt' or cat 'at.txt' 'lorem.txt'

* Visualiza las primeras 3 líneas del archivo `sed.txt` dentro de la carpeta lorem-copy 

cat sed.txt | head -n3

* Visualiza las ultimas 3 líneas del archivo `sed.txt` dentro de la carpeta lorem-copy 

cat sed.txt | tail -n3

* Añade `Homo homini lupus.` al final de archivo `sed.txt` dentro de la carpeta lorem-copy. 

echo 'Homo homini lupus' >> ~/desktop/ironhack/datamad0820/module-2/lab-bash/lorem-copy/sed.txt

* Visualiza las últimas 3 líneas del archivo `sed.txt` dentro de la carpeta lorem-copy. Deberías ver ahora `Homo homini lupus.`. 

cat sed.txt | tail -n3

* Sustituye todas las apariciones de `et` por `ET` del archivo `at.txt` dentro de la carpeta lorem-copy. Deberás usar `sed`. 

sed -i '' 's/et/ET/g' at.txt

* Encuentra al usuario activo en el sistema.

id -un

* Encuentra dónde estás en tu sistema de ficheros.

pwd

* Lista los archivos que terminan por `.txt` en la carpeta lorem.

ls *.txt

* Cuenta el número de líneas que tiene el archivo `sed.txt` dentro de la carpeta lorem. 

wc -l sed.txt

* Cuenta el número de **archivos** que empiezan por `lorem` que están en este directorio y en directorios internos.

find . -type f -name 'lorem*' -exec echo . \; | wc -l

* Encuentra todas las apariciones de `et` en `at.txt` dentro de la carpeta lorem.

grep -o 'et' at.txt 

* Cuenta el número de apariciones del string `et` en `at.txt` dentro de la carpeta lorem. 
grep -o 'et' at.txt | wc -l

*  Cuenta el número de apariciones del string `et` en todos los archivos del directorio lorem-copy. 

grep -ow 'et' ~/desktop/ironhack/datamad0820/module-2/lab-bash/lorem-copy | wc -l

* Almacena en una variable `name` tu nombre.

name=Fernando

* Imprime esa variable.

echo $name

* Crea un directorio nuevo que se llame como el contenido de la variable `name`.

mkdir $name

* Elimina ese directorio. 

rm -r $name

* Por cada archivo dentro de la carpeta `lorem` imprime el número de carácteres que tienen sus nombres. 
Intenta primero mostrar los archivos mediante un bucle for 
    1. Imprime los ficheros
    2. Imprime las longitudes de los nombres de los ficheros
    3. Imprime outputs con la siguiente estructura: `lorem has 5 characters lenght`
1. 
for f in 'at.txt' 'sed.txt' 'lorem.txt';
do
cat $f
done;

2. 
for f in 'at.txt' 'sed.txt' 'lorem.txt';
do
x=$(echo -n $f | wc -m)
echo lorem has {x} charachters length
done;

3.
for f in 'at.txt' 'sed.txt' 'lorem.txt';
do
x=$(echo -n $f | wc -m)
echo lorem has $x charachters length 
done;

lorem has        6 charachters length
lorem has        7 charachters length
lorem has        9 charachters length


* Muestra los procesos de forma jerárquica que se están ejecutando en tu ordenador:
    1. Usando el comando top o htop
    2. Usando el comando ps con argumentos
top
sudo htop

* Muestra información sobre tu procesador por pantalla
sysctl -n machdep.cpu.brand_string

* Crea 3 alias y haz que estén disponibles cada vez que inicias sesión

alias py="pytyon3"
source ~/.bash_profile
alias c="clear"
source ~/.bash_profile
alias l="ls -lah"
source ~/.bash_profile

* Comprime las carpetas lorem y lorem-copy en un archivo llamado lorem-compressed.tar.gz


tar -cf lorem-compressed.tar.gz ~/desktop/ironhack/datamad0820/module-2/lab-bash/lorem ~/desktop/ironhack/datamad0820/module-2/lab-bash/lorem-copy


* Descomprime el archivo lorem-compressed.tar.gz en la carpeta lorem-uncompressed

tar -xvf lorem-compressed.tar.gz 
