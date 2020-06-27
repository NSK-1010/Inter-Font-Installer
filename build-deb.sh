cd deb
cd inter
mkdir usr
cd usr
mkdir share
cd share
wget -O inter.zip https://fonts.google.com/download?family=Inter
mkdir inter
unzip inter.zip -d inter
mv ./inter/static/*.ttf ./
rm -r inter
mkdir inter
mv ./*.ttf inter
rm inter.zip
cd ../../..
dpkg -b inter
cd ..
