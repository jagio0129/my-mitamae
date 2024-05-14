#!/bin/bash

if [ -z $1 ]; then
  echo 'Error: Set recipe name'
  echo ''
  echo '  Exmaple: ./new-recipe.sh rbenv'
  echo '  => create ./mitamae/cookbooks/rbenv/recipe.rb'
  exit 0
fi

recipe=$1

if [ -e "./mitamae/cookbooks/${recipe}/recipe.rb" ]; then
  echo "Error: Recipe \"${recipe}\" already exists."
  exit 0
fi

mkdir -p "./mitamae/cookbooks/${recipe}"
touch "./mitamae/cookbooks/${recipe}/recipe.rb"

echo "Created ./mitamae/cookbooks/${recipe}/recipe.rb"
