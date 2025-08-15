#!/bin/sh

PROJECT_NAME=$1

sed -i.bak "s/template/$PROJECT_NAME/g" main.py
sed -i.bak "s/template/$PROJECT_NAME/g" pyproject.toml
sed -i.bak "s/template/$PROJECT_NAME/g" template/common.py
rm -f *.bak
rm -f template/*.bak

mkdir -p $PROJECT_NAME
mv template/* ./$PROJECT_NAME
rm -r template

# rm init-template.sh
