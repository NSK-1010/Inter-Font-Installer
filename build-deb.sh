#!/bin/bash

zipname="inter.zip"
downloadfile="https://fonts.google.com/download?family=Inter"
fontname="inter"
dir="inter/static"

cd deb
cd "${fontname}"
mkdir usr
cd usr
mkdir share
cd share
mkdir fonts
cd fonts
wget -O "${zipname}" "${downloadfile}"
mkdir "${fontname}"
unzip "${zipname}" -d "${fontname}"
mv ./${dir}/*.ttf ./
rm -r "${fontname}"
mkdir "${fontname}"
mv ./*.ttf "${fontname}"
rm "${zipname}"
cd ../../..
dpkg -b "${fontname}"
cd ..
