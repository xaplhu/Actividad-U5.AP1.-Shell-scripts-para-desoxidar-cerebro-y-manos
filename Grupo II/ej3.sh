#!/bin/bash
$sum=0;
$count=0;

while true; do
  echo "Introduce un valor: ";
  read $value;
  if [ $value -eq 0 ]; then
    break
  fi
  $sum=$((sum + value));
  $count=$((count + 1));
done

if [ $count -eq 0 ]; then
  echo "No se ha introducido ningún valor.";
else
  echo "La suma total de valores introducidos es $sum.";
  echo "El valor medio es $(($sum / $count)).";
fi