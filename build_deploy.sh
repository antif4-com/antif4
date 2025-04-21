#!/bin/zsh

DEPLOY_DIR="./deploys"
ROOT_DIR="."

# date_string is in the HHMMSS format and used for the time the package was created
date_string=$(date -u +%H-%M-%S 2>/dev/null)
year_string=$(date -u +%Y 2>/dev/null)
month_string=$(date -u +%m 2>/dev/null)
day_string=$(date -u +%d 2>/dev/null)

deploy_dir="${DEPLOY_DIR}/${year_string}/${month_string}/${day_string}/${date_string}"

mkdir -p $deploy_dir
cp -R $ROOT_DIR/public/ $deploy_dir

echo Created $deploy_dir.
