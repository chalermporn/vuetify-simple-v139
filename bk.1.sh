#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

echo "# chalermporn.github.io" >> README.md

git add dist/
git commit -m 'deploy'
git remote add origin https://github.com/chalermporn/vuetify-simple-v139.git
# if you are deploying to https://vuedemo.github.io
git push -f https://github.com/chalermporn/vuetify-simple-v139.git master

# if you are deploying to https://chalermporn.github.io/vuedemo
git push -f https://github.com/chalermporn/vuetify-simple-v139.git master:gh-pages
# git push -u origin master
reset git
# git config --global credential.helper cache
cd ..


git add -A && git commit -m "up" && git push -f https://github.com/chalermporn/vuetify-simple-v139.git master:gh-pages