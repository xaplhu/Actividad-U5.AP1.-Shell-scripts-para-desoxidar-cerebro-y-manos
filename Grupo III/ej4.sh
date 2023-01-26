#!/bin/bash
if [ $# -ne 3 ]; then
  echo "Por favor ingrese 3 argumentos: el primer valor, el operador (+, -, *, /) y el segundo valor.";
  exit 1;
fi

$val1=$1;
$val2=$3;
$operator=$2;

case $operator in
  "+")
    $result=$(echo "$val1 + $val2" | bc -l)
    ;;
  "-")
    $result=$(echo "$val1 - $val2" | bc -l)
    ;;
  "*")
    $result=$(echo "$val1 * $val2" | bc -l)
    ;;
  "/")
    if [ $(echo "$val2 == 0" | bc -l) -eq 1 ]; then
      echo "Error: No se puede dividir entre 0.";
      exit 1;
    fi
    $result=$(echo "$val1 / $val2" | bc -l)
    ;;
  *)
    echo "Error: Operador no válido. Los operadores válidos son +, -, * y /.";
    exit 1;
    ;;
esac

echo "Resultado: $result";