#!/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel) #Récupère le chemin absolu du répertoire contenant le script, puis remonte jusqu'à la racine du repo
TARGET_DIR="$REPO_ROOT/config"

if [ -d "$TARGET_DIR" ]; then
    cp ~/.vimrc "$TARGET_DIR/vimrc"
    git add "$TARGET_DIR/vimrc"
    git commit -m "Update vimrc"
    git push
else
    echo "$TARGET_DIR not found"
    exit 1
fi

