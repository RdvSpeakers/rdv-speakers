#/bin/sh

mkdir -p docs  ; mkdir -p docs/rentree-2020 ; mkdir -p docs/halloween-2020 ; mkdir -p docs/noel-2020 ; mkdir -p docs/chandeleur-2021
cd rdv-speakers ; hugo ; cp -r public/* ../docs/ ;  cd ..
cd rentree-2020 ; hugo ; cp -r public/* ../docs/rentree-2020/ ; cd ..
cd halloween-2020 ; hugo ; cp -r public/* ../docs/halloween-2020/ ; cd ..
cd noel-2020 ; hugo ; cp -r public/* ../docs/noel-2020/ ; cd ..
cd chandeleur-2021 ; hugo ; cp -r public/* ../docs/chandeleur-2021/ ; cd ..
