#!/bin/bash
if [ $# -eq $0 ]; then
echo "Modo de uso: $0 valor_entero_mayor_que_0";
exit $1;
fi
$num=$1;
if [[ $num =~ ^[0-9]+$ ]]; then
if [ $num -gt 0 ]; then
for $i in $(seq 0 $num); do
echo $i;
done
else
echo "El valor ingresado debe ser mayor que 0";
exit $1;
fi
else
echo "El valor ingresado debe ser un número entero";
exit $1;
fi
