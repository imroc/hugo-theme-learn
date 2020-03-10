#! /bin/bash

set -eux

cp assets/css/* hugo-theme-learn/assets/css/
cp assets/js/* hugo-theme-learn/assets/js/
cp i18n/* hugo-theme-learn/i18n/
cp layouts/_default/* hugo-theme-learn/layouts/_default/
cp layouts/partials/* hugo-theme-learn/layouts/partials/
cp layouts/shortcodes/* hugo-theme-learn/layouts/shortcodes/

cd hugo-theme-learn
git add .
git commit -m "$1"
git push origin master

cd ..
git add .
git commit -m "$1"
git push origin dev

