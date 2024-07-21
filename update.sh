#!/bin/sh

echo update rpitx - some package need internet connection -

sudo apt-get update
sudo apt-get install -y libsndfile1-dev git
sudo apt-get install -y imagemagick libfftw3-dev
#For rtl-sdr use
sudo apt-get install -y rtl-sdr buffer
# We use CSDR as a dsp for analogs modes thanks to HA7ILM
#git clone https://github.com/F5OEO/csdr

git pull

cd csdr || exit

git pull

make && sudo make install
cd ../ || exit

cd src || exit

#git clone https://github.com/alanbjohnston/librpitx

cd librpitx/src || exit

git pull

make && sudo make install
cd ../../ || exit

cd pift8

#git clone https://github.com/alanbjohnston/ft8_lib

cd ft8_lib

git pull

make && sudo make install
cd ../
make
cd ../

make
sudo make install
cd .. || exit
