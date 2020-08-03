#!/bin/bash

zipname="inter.zip"
downloadfile="https://fonts.google.com/download?family=Inter"
fontname="inter"
dir="inter/static"

wget -O "${zipname}" "${downloadfile}"
mkdir "${fontname}"
unzip "${zipname}" -d 
sudo mkdir "/usr/share/fonts/${fontname}"
sudo mv "./${dir}/*.ttf" "/usr/share/fonts/${fontname}"
rm -r "${fontname}"
rm "${zipname}"
