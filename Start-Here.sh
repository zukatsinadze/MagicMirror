#!/bin/sh

command -v npm &>/dev/null
if [[ $? -ne 0 ]]
then
    echo "[error] 'npm' command not found on the system. The project code can't be accessed without it!" >&2
    echo "I AM INSTALLING IT FOR YOU <3"
    sudo apt-get install npm
fi

npm install
npm start

