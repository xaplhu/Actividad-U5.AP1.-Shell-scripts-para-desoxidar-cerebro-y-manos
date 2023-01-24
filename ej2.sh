while true; do
  echo "Ingresa un valor mayor que 0: "
  read num

  if [[ $num =~ ^[0-9]+$ ]]; then
    if [ $num -gt 0 ]; then
      if [ $(($num % 2)) -eq 0 ]; then
        echo "El valor ingresado es par"
        break
      else
        echo "El valor ingresado es impar"
        break
      fi
    else
      echo "El valor ingresado debe ser mayor que 0"
    fi
  else
    echo "El valor ingresado debe ser un número entero"
  fi
done
