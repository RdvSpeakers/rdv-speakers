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
  - La Pâques des Speakers 2021 (`/paques-2021/`)
- Un site pour chacune de nos émissions périodiques:
  - Les Briques du Web (`/les-briques-du-web/`)

Les sites hébergés par https://rdv-speakers.fr/ sont servis par des GitHub pages
associés à ce depôt. 

Chaque site est un projet Hugo, et le fichier `build.sh` à la racine du dépôt 
permet de construire tous les projets et les merger sur `/doc`, qui est le 
répertoire de base utilisé pour les GitHub pages.



## Utiliser avec GitPod

La façon la plus simple de travailler avec les sites RdvSpeakers est de passer par GitPod.

> Please notice than the theme is a GitHub submodule. Modifying it is a bit 
> different and a more detailed doc will be needed...

> Here you have the doc for making modifications on a site, another doc will
> be added to create a new site

If building the sites of GitPod, please remeber:

1. Each one of the site is an independent Hugo project. 
1. Go to the site you want to modify
  
  ```bash
  cd les-briques-du-web
  ```
1. Run Hugo server with the right bindings for GitPod:

  ```bash
  hugo server -w --baseUrl $(gp url 1313) --appendPort=false
  ```

1. Hugo should then notice your changes and rebuild the site automatically


1. When you're happy with the modifications, you can push and do your PR. When the PR will be merged, a GitHub Action will build and deploy the sites.

## Notes on adding a new site (W.I.P.)


To create a new site for the RdvSpeakers family, the easiset way is to copy one of the current sites (if doing a periodical  event like Les Briques du Web, please copy `les-briques-du-web`, else copy our latest event, `mardi-gras-2021`right now).

After copying, you need to initialize the git submodule for the theme.

```bash
cp -r ./les-briques-du-web ./new_site
cd new_site
rm -fr themes/rdvspeakers-theme-hugo 
git submodule add git@github.com:RdvSpeakers/rdvspeakers-theme-hugo.git themes/rdvspeakers-theme-hugo
```

When ready to publish, don't  forget to add the site to the building script `build.sh`.