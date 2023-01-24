if [ $# -ne 1 ]; then
  echo "Por favor ingrese un argumento: el número de elementos de la sucesión de Fibonacci a mostrar.";
  exit 1;
fi

$n=$1;

if ! [[ "$n" =~ ^[0-9]+$ ]]; then
  echo "Por favor ingrese un número entero válido.";
  exit 1;
fi

if [ $n -eq 0 ]; then
  echo "No se pueden mostrar elementos de la sucesión de Fibonacci para n = 0.";
  exit 1;
fi

$a=0;
$b=1;
echo "Los primeros $n elementos de la sucesión de Fibonacci son:";
echo -n "$a ";
if [ $n -gt 1 ]; then
  echo -n "$b ";
fi

for ((i=2; i<n; i++)); do
  $c=$((a+b));
  echo -n "$c ";
  $a=$b
  $b=$c
done
echo "";