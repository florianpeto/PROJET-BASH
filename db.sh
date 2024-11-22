#!/bin/bash
echo "Bienvenus sur Notre Gesion de contact en bash"
#Action
echo "Voici les action possibles"
echo "1-Ajouter un contact"
echo "2-Supprimer un contact"
echo "3-Modifier un contact"
echo "4-Afficher les contacts"
echo "5- Rechercher un contact"
read Action

if [ $Action = "1" ]
then
    echo "Veuillez entrer le nom de votre rpertoire"
    read Repertoire
    mkdir $Repertoire
    cd $Repertoire
    touch Contact.csv
    echo "Nom|Prenom|Status|Site" >> Contact.csv
    sleep 1
    echo "Veuillez entrer le nom de votre contact"
    read Nom
    echo "Veuillez entrer le prénom de votre contact"
    read Prenom
    echo "Veuillez entrer le status de votre contact"
    read Status
    echo "Veuillez entrer le site de votre contact"
    read Site
    #enregistrement des contacts
    echo "$Nom|$Prenom|$Status|$Site" >> Contact.csv
    echo "Votre contact a bien été ajouté"
    sleep 0.5
fi

#suppression des contacts
if [ $Action = "2" ]
then
    echo "Veuillez entrer le nom de votre rpertoire"
    read Repertoire
    cd $Repertoire
    echo "Veuillez entrer le nom de votre contact"
    read Nom
    sed -i "/$Nom/d" Contact.csv
    sleep 0.5
    clear
    echo "Votre contact a bien été supprimé"
fi

#modification des contacts
if [ $Action = "3" ]
then
    echo "Veuillez entrer le nom de votre contact"
    read Nom
    echo "Veuillez entrer le prénom de votre contact"
    read Prenom
    echo "Veuillez entrer le status de votre contact"
    read Status
    echo "Veuillez entrer le site de votre contact"
    read Site
    sed -i "/$Nom/d" Contact.csv
    echo "$Nom|$Prenom|$Status|$Site" >> Contact.csv
    echo "Veuillez patientez"
    sleep 1
    echo "Votre contact a bien été modifié"
fi

#affichage des contacts
if [ $Action = "4" ]
then
    echo "Veuillez entrer le nom de votre rpertoire"
    read Repertoire
    cd $Repertoire
    echo "Veuillez patientez"
    sleep 1
    cat Contact.csv
fi

#recherche des contacts
if [ $Action = "5" ]
then
echo "Veuillez entrer le nom de votre rpertoire"
    read Repertoire
    cd $Repertoire
    echo "Veuillez entrer le nom de votre contact"
    read Nom
    echo "Veuillez patientez"
    sleep 1
    grep $Nom Contact.csv
fi