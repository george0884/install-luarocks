#!/bin/bash
echo "prueba"
sudo apt --yes install build-essential libreadline-dev && sudo apt --yes install make && sudo apt --yes install cmake

git clone https://github.com/george0884/lua-curl-error && cd lua-curl-error && tar -xzvf curl.tar.gz && sudo cp curl -r /usr/include/ && cd .. && sudo rm -Rf lua-curl-error

curl -R -O http://www.lua.org/ftp/lua-5.3.4.tar.gz && tar -zxf lua-5.3.4.tar.gz && cd lua-5.3.4 && sudo make linux test && sudo make install && cd .. && sudo rm -Rf lua-5.3.4.tar.gz && sudo rm -Rf lua-5.3.4

wget https://luarocks.org/releases/luarocks-3.0.4.tar.gz && tar zxpf luarocks-3.0.4.tar.gz && cd luarocks-3.0.4 && ./configure && sudo make build && sudo make install && cd .. && sudo rm -Rf luarocks-3.0.4 && sudo rm -Rf luarocks-3.0.4.tar.gz

sudo apt-get update && sudo apt-get --yes install libreadline-dev libssl-dev lua5.1 liblua5.1-dev git make unzip redis-server curl libcurl4-gnutls-dev libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev tmux subversion && wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz && tar zxpf luarocks-2.2.2.tar.gz && cd luarocks-2.2.2 && sudo ./configure && sudo make bootstrap && sudo luarocks install luasocket && sudo luarocks install luasec && sudo luarocks install redis-lua && sudo luarocks install lua-term && sudo luarocks install serpent && sudo apt-get --yes install curl && sudo luarocks install std.normalize && cd .. && sudo rm -Rf luarocks-2.2.2.tar.gz && sudo rm -Rf luarocks-2.2.2 && sudo luarocks install luaposix && sudo luarocks install copas && sudo luarocks install dkjson && sudo apt-get --yes install libcurl4-openssl-dev && sudo luarocks install Lua-cURL --server=https://luarocks.org/dev && sudo luarocks install lua-curl

sudo rm -Rf luarocks-3.0.4* && sudo rm -Rf lua-5.3.4* && sudo rm -Rf lua-curl-error*

exit
