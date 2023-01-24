while true; do
  echo "Ingresa un valor numérico del día del mes (1 a 30): ";
  read $num;

  if [[ $num =~ ^[0-9]+$ ]]; then
    if [ $num -ge 1 ] && [ $num -le 30 ]; then
      dia=$(( (num-1) % 7 + 1 ))
      case $dia in
        1) echo "Lunes";;
        2) echo "Martes";;
        3) echo "Miércoles";;
        4) echo "Jueves";;
        5) echo "Viernes";;
        6) echo "Sábado";;
        7) echo "Domingo";;
      esac
      break;
    else
      echo "El valor ingresado debe estar entre 1 y 30";
    fi
  else
    echo "El valor ingresado debe ser un número entero";
  fi
done
