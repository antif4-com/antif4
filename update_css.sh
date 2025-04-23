#!/bin/zsh

base_dir="./assets/css/webtui"
source_dir="./node_modules/@webtui"

mkdir -p $base_dir/base
mkdir -p $base_dir/theme-catppuccin
cp -r $source_dir/css/dist/* $base_dir/base
cp -r $source_dir/theme-catppuccin/dist/* $base_dir/catppuccin

echo Completed updating css.  
