#!/bin/bash
echo "Introduce la cantidad de números aleatorios que deseas generar:";
read $cantidad;
echo "Introduce el valor mínimo:";
read $minimo;
echo "Introduce el valor máximo:";
read $maximo;

for i in (seq 1 $cantidad); do
  echo (( ( RANDOM % ($maximo - $minimo + 1) ) + $minimo ));
done