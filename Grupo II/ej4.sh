echo "Introduce la cantidad de litros de agua consumidos:";
read $litros;

if [ $litros -le 50 ]; then
  $coste=20;
elif [ $litros -le 200 ]; then
  $coste=$(echo "($litros-50)*0.2+20" | bc)
else
  $coste=$(echo "($litros-200)*0.1+30+20" | bc)
fi

echo "El coste total es de $coste euros.";