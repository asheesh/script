#!/bin/bash

who=$(whoami)

if [ "$who" == "root"  ]
then
    curl -LO https://github.com/lensapp/lens/releases/download/v3.5.0/Lens-3.5.0.AppImage #This will download the binary 
    sudo chmod 755 Lens-3.5.0.AppImage # to make the binary executable
    sudo mv Lens-3.5.0.AppImage /usr/local/bin  # Moving the binary to usr/local/bin so that it can be used from any path
else
    echo "Kindly run this as root"
fi
