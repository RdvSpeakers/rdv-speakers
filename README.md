[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/RdvSpeakers/rdv-speakers)

# Les Rendez-vous des Speakers

 

Site web pour *Les Rendez-vous des Speakers*.

  

## Prochain événement

On lance bientôt [Les Briques du Web](https://rdv-speakers.fr/les-briques-du-web/)



## Structure

Dans ce dépôt il y a plusieurs sites :

- Le site global de *Les Rendez-vous des Speakers* (`/rdv-speakers/`)
- Un site pour chacun de nos événements:
  - La Rentrée des Speakers 2020 (`/rentree-2020/`)
  - Le Halloween des Speakers 2020 (`/halloween-2020/`)
  - Le Noël des Speakers 2020 (`/noel-2020/`)
  - La Chandeleur des Speakers 2021 (`/chandeleur-2021/`)
  - Le Mardi-gras des Speakers 2021 (`/mardi-gras-2021/`)
- Un site pour chacune de nos émissions périodiques:
  - Les Briques du Web (`/les-briques-du-web/`)

Chaque site est un projet Hugo, et le fichier `build.sh` à la racine du dépôt permet de construire tous les projets et les merger sur `/doc`, qui est le répertoire utilisé pour le GitHub pages.






## Notes on adding a new site (W.I.P.)


### Adding the theme submodule

```bash
cd new_site
rm -fr themes/rdvspeakers-theme-hugo 
git submodule add git@github.com:RdvSpeakers/rdvspeakers-theme-hugo.git themes/rdvspeakers-theme-hugo
```