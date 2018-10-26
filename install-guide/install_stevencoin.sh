#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y  

sudo apt-get install git -y && sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils -y && sudo apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev -y && sudo apt-get install libboost-all-dev -y && sudo apt-get install software-properties-common -y && sudo add-apt-repository ppa:bitcoin/bitcoin -y && sudo apt-get update && sudo apt-get install libdb4.8-dev libdb4.8++-dev -y && sudo apt-get install libminiupnpc-dev -y && sudo apt-get install libzmq3-dev -y && sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler  -y && sudo apt-get install libqt4-dev libprotobuf-dev protobuf-compiler -y && sudo apt-get update 

mkdir /home/$USER/.stevencoin

echo 'server=1
daemon=1
listen=1
'rpcuser=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)'
'rpcpassword=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)'
rpcallowip=127.0.0.1' > /home/$USER/.stevencoin/stevencoin.conf

git clone https://github.com/stevencoind/stevencoin.git /home/$USER/stevencoin

sudo chmod 755 /home/$USER/stevencoin
cd /home/$USER/stevencoin/src/ && make -f makefile.unix && cd /home/$USER/stevencoin/ && qmake && make 
sudo chmod +x /home/$USER/stevencoin/stevencoin-qt


echo "[Desktop Entry]
Type=Application
Categories=Office
Encoding=UTF-8
Name=Stevencoin
Comment=
Exec=/home/$USER/stevencoin/stevencoin-qt
Icon=/home/$USER/stevencoin/share/pixmaps/stevencoin.png
Terminal=false" >> /home/$USER/Desktop/stevencoin-control-panel.desktop

sudo chmod u+x /home/$USER/Desktop/stevencoin-control-panel.desktop
sudo chmod +x /home/$USER/Desktop/stevencoin-control-panel.desktop

sudo cp /home/$USER/Desktop/stevencoin-control-panel.desktop /usr/share/applications

cd /home/$USER/stevencoin/ && ./stevencoin-qt



exit 0
