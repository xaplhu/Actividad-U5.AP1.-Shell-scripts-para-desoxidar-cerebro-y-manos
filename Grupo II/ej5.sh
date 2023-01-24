if [ -z "$1" ]; then
  echo "Error: No se ha especificado la ruta del fichero.";
  exit 1;
fi

if [ ! -f "$1" ]; then
  echo "Error: El fichero $1 no existe.";
  exit 1
fi

if [ "$2" == "-r" ]; then
  tac "$1";
else
  cat "$1";
fi