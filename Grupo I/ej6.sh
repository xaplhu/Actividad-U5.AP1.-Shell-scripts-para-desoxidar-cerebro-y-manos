while true; do
  echo "Menú de opciones:";
  echo "1. Buscar por título";
  echo "2. Buscar por año";
  echo "3. Buscar por editorial";
  echo "4. Buscar por género";
  echo "5. Insertar libro";
  echo "6. Salir";
  read $opcion;

  case $opcion in
    1) echo "Ingresa el título a buscar: ";
       read $titulo;
       grep -i -w "$titulo" bdlibros.txt;;
    2) echo "Ingresa el año a buscar: ";
       read $anio;
       grep -i "$anio" bdlibros.txt;;
    3) echo "Ingresa la editorial a buscar: ";
       read $editorial
       grep -i "$editorial" bdlibros.txt;;
    4) echo "Ingresa el género a buscar: ";
       read $genero
       grep -i "$genero" bdlibros.txt;;
    5) ./libros-anyadir.sh;;
    6) exit;;
    *) echo "Opción inválida, intenta de nuevo.";;
  esac
done
