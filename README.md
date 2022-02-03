# up_doc
Scripts de mise à jour des conteneur Docker

## Pré-requis

 - Docker 
 - Docker-compose


## Ajout du script en tant que commande bash

    mkdir scripts && cd scripts && git clone [https://github.com/Wolf117Warrior/up_doc.git](https://github.com/Wolf117Warrior/up_doc.git) && cd up_doc && chmod +x up_doc.sh && sudo ln -s ~/scripts/up_doc/up_doc.sh /usr/bin/up_doc && nano up_doc.sh

Vous n'êtes pas obligé de prendre toute la commande, ajustez en fonction de votre configuration et votre besoin.

## Configuration du script

Il faut dans un premier temps renseigner le bon dossier ou se trouve vos applications dockérisé et les fichier docker-compose.yml.

Modifiez la ligne correspondant au chemin de votre dossier.

    #Variable
    var1=$1
    echo " "
    #Déplacement dans le répertoire Docker
    cd **/dossier/de/vos/conteneur/docker/**
    echo "Accès au répertoire des applis conteneurisé"

Et ajouter également **sudo** si la commande docker-compose avec votre utilisateur courant le nécessite.

Si votre docker est structuré de cette manière

    ~/docker-apps
    |- App_docker1
    |- App_docker2
    |- App_docker3
Vous n'aurez plus qu'a lancer la commande de cette manière pour chaque **up_doc <nom_appli>** pour la mettre à jour.

Exemple :

    up_doc App_docker1
