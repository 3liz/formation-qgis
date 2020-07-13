---
Title: Étiquettes
Favicon: logo.png
...

[Back](index.md)

[TOC]

## Formulaires

QGIS permet de faire de masques de saisie lors de la création ou l'édition des données : avoir des menus déroulants, des
cases à cocher, des zones de textes en lecture seule...

Pour cela, nous allons réaliser une petite base de données pour de la saisie d'observations faunistiques. Nous pouvons
utiliser PostgreSQL ou alors une base de données fichier comme Geopackage.
Nous allons utiliser le modèle de données suivant:

* Table `especes`, non spatiale
  * ID
  * Nom commun : `nom_commun`
  * Nom scientifique : `nom_scientifique`
  * Autres champs métiers possibles : Taxref, page Wikipédia, photo etc
* Table `observateurs`, non spatiale
  * ID
  * Nom : `nom`
  * Prénom  : `prenom`
* Une table des communes ou département avec un code INSEE, polygonale
* Table `observations`, géométrie ponctuelle
  * ID
  * Date : `date`
  * Espèce : `espece_id`, pour stocker l'identifiant de l'espèce
  * Observateur : `observateur_id`, poru stocker l'identifiant de l'observateur
  * Genre (liste fermé) : `genre`
  * Nombre : `nombre`
  * En groupe : `en_groupe`, type booléen
  * Photo : `photo`
  * Remarque : `remarque`

**Dans le cas d'un Geopackage**, il y a déjà le champ `fid` qui fait office de clé primaire.

**Astuce pour créer les champs**:
* créer juste le premier champ dans la boite de dialogue de création de couche. Nous utiliserons les outils dans le 
panneau `Table attributaire` pour ajouter les autres attributs. Il y a plus de choix.
* la longueur d'un champ texte correspond à sa limite pour stocker des caractères
