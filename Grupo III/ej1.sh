#!/bin/bash
echo "Ingrese el primer número:";
read $num1;
echo "Ingrese el segundo número:";
read $num2;

if [ $num1 -gt $num2 ]; then
  echo "El primer número es mayor.";
elif [ $num2 -gt $num1 ]; then
  echo "El segundo número es mayor.";
else
  echo "Los dos números son iguales.";
fi