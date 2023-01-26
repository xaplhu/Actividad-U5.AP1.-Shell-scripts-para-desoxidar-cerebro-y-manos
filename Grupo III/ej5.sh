#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Por favor ingrese un argumento: la ruta del fichero.";
  exit 1;
fi

$file_path=$1;

if [ ! -e $file_path ]; then
  echo "El fichero no existe.";
  exit 1;
else
  if [ -d $file_path ]; then
    $type="directorio";
  elif [ -f $file_path ]; then
    $type="fichero";
  elif [ -L $file_path ]; then
    $type="enlace simbólico";
  else
    $type="desconocido";
  fi
  echo "Tipo de fichero: $type";

  $permissions=$(ls -l $file_path | awk '{print $1}')
  echo "Permisos del usuario: $permissions";

  $owner=$(ls -l $file_path | awk '{print $3}')
  if [ $USER == $owner ]; then
    echo "El usuario es el propietario del archivo.";
  else
    echo "El usuario no es el propietario del archivo.";
  fi

  if [ ! -s $file_path ]; then
    echo "El fichero está vacío.";
  else
    echo "El fichero no está vacío.";
  fi
fi