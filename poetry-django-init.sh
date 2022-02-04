#!/bin/bash

echo "CREATING A DJANGO PROJECT WITH POETRY & GIT" | pokemonsay

POETRY_PROJECT=$1
DJANGO_PROJECT=`echo ${POETRY_PROJECT}|tr '-' '_'`

echo "POETRY PROJECT = $POETRY_PROJECT" | pokemonsay
echo "DJANGO PROJECT = $DJANGO_PROJECT" | pokemonsay

mkdir $POETRY_PROJECT
cd $POETRY_PROJECT

echo "POETRY INITIALIZING" | pokemonsay
poetry init --no-interaction --dependency django:3.2.5

echo "ADDING DJANGO POETRY CONFIGURATIONS TO PYPROJECT.TOML" | pokemonsay
curl https://raw.githubusercontent.com/vchrombie/django-starter-project/scripts-without-django-extensions/scripts.py -o scripts.py
cat /home/beehyv/.poetry-django-scripts-config >> ./pyproject.toml

echo "INSTALLING THE PROJECT"
poetry install
source .venv/bin/activate

echo "DJANGO INITIALIZING" | pokemonsay
django-admin startproject $DJANGO_PROJECT .

echo "ADDING .GITIGNORE" | pokemonsay
curl https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore -o .curl https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore -o .gitignore
sed -i '/idea\//s/^#//g' .gitignore
rm .curl

echo "ADDING README.MD" | pokemonsay
echo "# $POETRY_PROJECT" > README.md

echo "INITIALIZING GIT" | pokemonsay
git init
git add .
git commit -m "Initial Commit: Django, Poetry, Git"

echo "DJANGO PROJECT WITH POETRY & GIT IS COMPLETED!" | pokemonsay
