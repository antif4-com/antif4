#!/bin/zsh

mkdir ./themes/antif4/assets/css/webtui
mkdir ./themes/antif4/assets/css/webtui/base
mkdir ./themes/antif4/assets/css/webtui/catppuccin
cp -r ./node_modules/@webtui/css/dist/* ./themes/antif4/assets/css/webtui/base
cp -r ./node_modules/@webtui/theme-catppuccin/dist/* ./themes/antif4/assets/css/webtui/catppuccin
