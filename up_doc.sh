#!/bin/bash
echo "Lancement de la mise à jour du conteneur"

sleep 2

#Variable
var1=$1
echo " "
# Déplacement dans le répertoire Docker
cd /dossier/de/vos/conteneur/docker/
echo "Accès au répertoire des applis conteneurisé"

sleep 2

echo " "
# Placement dans le dossier de l'application
cd $var1
echo "Vous êtes dans le dossier :"
pwd
echo " "

sleep 2

# Récupération de la dernière images
echo "Mise à jour de l'image docker"
docker-compose pull
echo " "

sleep 2

# Mise à jour du container avec la dernière version
echo "Recréation du conteneur avec le nouvelle image docker"
docker-compose up -d --remove-orphans
echo " "

sleep 2

# suppression des images non utilisé
echo "Suppression des images docker non utilisé"
docker image prune -f
echo " "

sleep 2
