echo "Introduce la primera cadena: "
read cadena1
echo "Introduce la segunda cadena: "
read cadena2
if [ "$cadena1" == "$cadena2" ]; then
  echo "Las cadenas son iguales."
else
  echo "Las cadenas son diferentes."
fi