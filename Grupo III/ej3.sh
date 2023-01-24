$words=()
while true; do
  echo "Ingrese una palabra (escriba 'fin' para terminar):";
  read $word;
  if [ "$word" == "fin" ]; then;
    break;
  else
    $words+=("$word");
  fi
done

echo "Palabras introducidas: ${#words[@]}";
echo "Palabras ordenadas alfabéticamente:";
echo "${words[@]}" | tr ' ' '\n' | sort;