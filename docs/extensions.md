# Les extensions

QGIS, par défaut permet beaucoup de fonctionnalités.
Mais il est possible de rajouter des fonctionnalités supplémentaires en y installant des extensions.

On accède au gestionnaire des extensions en faisant `Extensions` ▶ `Installer/Gérer les extensions`.
Avant même d'ajouter des extensions, notons que certaines extensions sont déjà installées ! Il s'agit des extensions
natives à QGIS désormais. **Veillez à les garder** activés !

Les extensions natives indispensables sont :

* Processing
* DBManager

Voici une liste, non exhaustive, des extensions qui peuvent être intéressantes :

* **AutoSaver**, pour enregistrer automatiquement son projet à interval de temps régulier
* **QuickMapServices**, accéder à des fonds de carte. Pensez à aller dans les **settings** de l'extension ▶ 
`More services`  ▶ `Get contributed pack`. Cela permet d'avoir des fonds supplémentaires.
Notons les fonds suivants qui peuvent être intéressant (et légaux avec une simple attribution):
    * Les fonds **Stamen** avec **Toner**. Le fond **Watercolor** pour l'esthétisme.
    * Les fonds **OSM** avec **Humanitarian**, **Monochrome**, **OpenTopoMap**...
    * Les fonds **Mapsurfer**
* **DataPlotLy**, permet de faire des graphiques dans l'interface principale et aussi de les exporter dans les PDF
* **Layer Board**, petit plugin pour avoir une vue d'ensemble des couches : les différentes projections, les encodages etc.
  Il faut écrire `Layer board` avec un espace pour le trouver.
* **QGIS Resources Sharing**, permet d'accéder à des librairies de styles, icônes etc
* **QuickOSM**, pour télécharger localement de la donnée OSM
* **French locator filter**, pour faire de la saisie d'une adresse en utilisant https://geo.api.gouv.fr/adresse
* **Spreadsheet Layers**, même si QGIS permet efficacement d'ouvrir un fichier ODS ou XLS et de pouvoir sélectionner une
feuille en particulier, il est parfois intéressant d'utiliser cette extension

## Partage de style

Avec le QGIS Resources Sharing, il existe le [style hub](https://plugins.qgis.org/styles/?order_by=-upload_date&&is_gallery=true)
pour télécharger des styles.
