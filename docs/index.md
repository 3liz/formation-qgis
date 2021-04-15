# Formation QGIS

## Liens

* Manuel d'utilisation officiel QGIS https://docs.qgis.org/3.10/fr/docs/user_manual/
* Autres liens utiles :
    * http://www.geoinformations.developpement-durable.gouv.fr/

## Données

Dans le dossier `data` de la clé USB/FTP, vous pouvez avoir des données comme :
 
* IGN:
    * AdminExpress
    * OCS-GE si disponible
    * BD Topo (désormais ouverte)
* Osm2Igeo
* Base comparateur de l'INSEE
* SRTM si besoin

Ces données sont gratuites et téléchargeables, selon une licence. [Lire ici.](./source-de-donnees.md)

## Contenu

* Présentation des SIG et de QGIS
    * Rappel de base sur le SIG ([PDF](./media/pdf/01_intro_sig_formats.pdf))
    * Le projet QGIS
        * [Association QGIS](https://www.qgis.org/fr/site/getinvolved/governance/index.html) 
        * [Liste des modifications dans les versions](https://changelog.qgis.org/en/qgis/)
        * [Calendrier des versions](https://www.qgis.org/fr/site/getinvolved/development/roadmap.html#release-schedule)
        * [Projet QGIS du calendrier](https://github.com/Gustry/qgis-roadmap-project)
    * Rappel cartographique ([PDF de Boris Mericskay](./media/pdf/semiologie_graphique.pdf))
    * Rappel sur les projections
        * ([PDF](./media/pdf/02_projections.pdf))
        * https://www.youtube.com/watch?v=kIID5FDi2JQ
        * https://thetruesize.com
* [Source de données](./source-de-donnees.md)
* Prise en main de QGIS
    * [Interface de QGIS](./interface.md)
        * Fenêtre principale
        * Astuces
        * Propriétés
    * [Les extensions QGIS](./extensions.md)
    * [Ajouter des couches et les visualiser](./ajout-couches.md)
        * Vecteurs
        * Encodage
        * Rasters (MNT, WMS, QuickMapServices)
        * Manipuler la légende
        * Utiliser les thèmes de couches
        * Les vues cartes
        * La vue 3D
        * Extension LayerBoard
        * Utilisation des outils de la barre d'outil `vecteur`
        * Faire des sélections graphiques
        * Faire des sélections par valeur
    * [Les projections](./projections.md)
        * Les projections courantes en France métropolitaine
        * Enregistrer en tant que nouvelle couche (avec ou sans sélection) et reprojeter
    * [Ajout d'un fichier CSV avec jointure](./jointure-attributaire.md)
        * Compléter une table attributaire avec un fichier externe
* [Les expressions](./expressions.md)
    * Nommage d'une entité
    * Infobulle
    * Requête attributaire (sélection par expression)
    * Mise en forme conditionnelle
    * Calculatrice de champ
    * Panneau statistique
* [La symbologie vecteur](./symbologie-vecteur.md)
    * Les différents types de symbologie
    * Ponctuelle
    * Polygonale
    * Linéaire
    * Graduée, catégorisée, règles, discrétisation
    * Les niveaux de dessins pour un même symbole
    * Les effets
* [Étiquettes](./etiquettes.md)
    * Configuration
    * Déplacement manuel des étiquettes
    * Utilisation d'une expression pour construire l'étiquette
* [Processing](./processing.md)
    * Outil d'analyse vecteur
    * Modification par algorithme de traitement
* [Couche virtuelle](./couche-virtuelle.md)
    * Construire une couche virtuelle
* [Mise en page](./mise-en-page.md)
    * Faire une carte statique
    * Utilisation des variables et des expressions
    * Faire un atlas
    * Faire un rapport
* [Création de données](./formulaire.md)
    * Création des tables
    * Les relations 1-n entre les tables
    * Les formulaires avec les masques de saisies
    * Les champs virtuels
* DataPlotly
    * Faire des graphique dans l'interface QGIS
    * Ajouter des graphiques dans un atlas
