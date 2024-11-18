#!/bin/bash

# Creation du Nombre Aleatoire
MAX=100
nombre=$(( $(hexdump -n 2 -e '/2 "%u"' /dev/urandom) % MAX + 1 ))

# Initialise  les variables
nb_essaie=0
valeur=0

# Essaie, teste avec la valeur creer et limitation d'essaie a 6
echo " La Machine a choisi son Nombre"
while [[ $valeur -ne $nombre && $nb_essaie -lt 6 ]]; do
    echo "Quelle est votre proposition ?"
    read valeur
    nb_essaie=$((nb_essaie+1))

    if [[ $valeur -lt $nombre ]]; then
        echo "La valeur est plus grande."
    elif [[ $valeur -gt $nombre ]]; then
        echo "La valeur est plus petite."
    fi
done

#Message de fin pour savoir s'il a gagner ou perdu
if [[ $valeur -eq $nombre ]]; then
    echo "Vous avez gagner en $nb_essaie  essais"
else
    echo "Vous avez perdu le nombre  était : $nombre"
fi
