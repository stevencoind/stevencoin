#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y  

sudo apt-get install git -y && sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils -y && sudo apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev -y && sudo apt-get install libboost-all-dev -y && sudo apt-get install software-properties-common -y && sudo add-apt-repository ppa:bitcoin/bitcoin -y && sudo apt-get update && sudo apt-get install libdb4.8-dev libdb4.8++-dev -y && sudo apt-get install libminiupnpc-dev -y && sudo apt-get install libzmq3-dev -y && sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler  -y && sudo apt-get install libqt4-dev libprotobuf-dev protobuf-compiler -y && sudo apt-get update 

mkdir .stevencoin && cd .stevencoin && echo 'server=1
daemon=1
listen=1
rpcuser=user
rpcpassword=Ecc7022b3D87a77E128081dbA62b1550Aa48
rpcallowip=127.0.0.1' > stevencoin.conf && cd ..

git clone https://github.com/stevencoind/stevencoin.git && sudo chmod 755 stevencoin && cd ./stevencoin/src/ && make -f makefile.unix && cd .. && qmake && make && sudo chmod +x ./stevencoin-qt && ./stevencoin-qt && cd ..

cd /home/$USER/Desktop/

echo "[Desktop Entry]
Name=Stevencoin
Exec=/home/$USER/stevencoin/stevencoin-qt
Comment=
Terminal=false
Icon=/home/$USER/stevencoin/share/pixmaps/stevencoin.png
Type=Application" >> stevencoin-control-panel.desktop

chmod u+x stevencoin-control-panel.desktop



exit 0
