#!/bin/bash
if [ $# -eq 0 ] || [ $1 -le 0 ]; then
  echo "Uso: $0 valor"
  echo "El script debe recibir como argumento un valor mayor que 0.";
  exit 1;
fi

if [ $(($1 % 2)) -eq 0 ]; then
  echo "El valor introducido es par.";
else
  echo "El valor introducido es impar.";
fi