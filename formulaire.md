---
Title: Formulaire
Favicon: logo.png
Sibling: yes
...

[TOC]

## Documentation officielle

* https://docs.qgis.org/3.10/fr/docs/user_manual/working_with_vector/vector_properties.html#attributes-form-properties

## Objectif

QGIS permet de faire de masques de saisie lors de la création ou l'édition des données : avoir des menus déroulants, des
cases à cocher, des zones de textes en lecture seule...

Pour cela, nous allons réaliser une petite base de données pour de la saisie d'observations faunistiques. Nous pouvons
utiliser PostgreSQL ou alors une base de données fichier comme Geopackage.

## Exercice

### Création des tables

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

### Création des formulaires

Dans les propriétés de la couche vecteur en question, onglet `Formulaire d'attributs`:
* Couche `observateurs` : 
    * Mode formulaire : `Génération automatique`
    * Mettre un alias sur les champs, language humain
    * Mettre le bon outil d'édition pour les champs : `cachée` ou `texte`
    * Mettre les contraintes et les renforcer
* Couche `especes` : 
    * Même mode de formulaire
    * Alias
    * Configurer aussi l'outil d'édition, avec l'unicité sur le nom de l'espèce
    * Bonus : utiliser une expression pour vérifier que la première lettre est bien une majuscule.
    `regexp_match( left("nom_commun", 1), '[A-Z]')`
* Couche `observations` : 
    * Bonus : une expression pour la date pour éviter une saisie dans le futur