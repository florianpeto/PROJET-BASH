#!/bin/bash

echo "Entrer une valeur decimal entre 0 et 255:"
read input

if (($input < 0 || $input > 255 )); then
	echo "Erreur veuillez entrer un nombre valide"
fi

if ! [[ "$input" =~ ^[0-255]+$ ]]; then
	echo "Veuillez ne pas entrer de lettre"
fi

binary=""
while [ "$input" -gt 0 ]; do
	remainder=$((input % 2))
	binary="$remainder$binary"
	input=$((input / 2))
done



echo "la valeur decimale de $input en binaire est : $binary"
