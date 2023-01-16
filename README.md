
# TP_docker - Lancez une application avec docker

*Work in progress:* le fichier **docker-compose.yml** est incomplet et ne fonctionne pas encore.

Ici j'explique comment lancer le projet.

A la racine du projet se trouve le fichier **building_app.sh** qui permet de créer les images et de lancer le docker compose.

Il y a deux dossiers et dans chaque dossier il y a un fichier docker file qui permet de créer un image docker.
## Dossier App

Ici se trouve l'application python donné au cours du précédent projet.

## Dossier Database

Là ou se trouve le fichier sql qui permet d'importer la base de donnée : **parc_informatique**. 

## Fichier permettant de lancer le tout

Pour lancer le serveur il faut faire : 

Le fichier **building_app.sh** doit être lancé de cette façon dans le terminal de commande.

```bash
  bash building_app.sh
```