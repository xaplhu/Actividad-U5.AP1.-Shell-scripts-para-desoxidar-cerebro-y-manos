echo "Ingresa el título del libro: "
read titulo

echo "Ingresa el año de publicación: "
read anio

echo "Ingresa la editorial: "
read editorial

echo "Selecciona el género:"
echo "1. Aventura"
echo "2. Ciencia Ficción"
echo "3. Fantasía"
echo "4. Romance"
echo "5. Terror"
read opcion

case $opcion in
  1) genero="Aventura";;
  2) genero="Ciencia Ficción";;
  3) genero="Fantasía";;
  4) genero="Romance";;
  5) genero="Terror";;
esac

echo "$titulo,$anio,$editorial,$genero" >> bdlibros.txt

echo "Libro añadido exitosamente!"
