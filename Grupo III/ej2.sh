while true; do
  echo "Ingrese su nota (de 0 a 10):";
  read $nota;
  if ! [[ "$nota" =~ ^[0-9]{1,2}(\.[0-9]{1,2})?$ ]]; then
    echo "Por favor ingrese un número válido.";
  elif [ $(echo "$nota < 5" | bc -l) -eq 1 ]; then
    echo "Suspendido.";
    break;
  elif [ $(echo "$nota < 7" | bc -l) -eq 1 ]; then
    echo "Aprobado.";
    break;
  elif [ $(echo "$nota < 9" | bc -l) -eq 1 ]; then
    echo "Bien.";
    break;
  elif [ $(echo "$nota < 10" | bc -l) -eq 1 ]; then
    echo "Notable.";
    break;
  else
    echo "Sobresaliente.";
    break;
  fi
done