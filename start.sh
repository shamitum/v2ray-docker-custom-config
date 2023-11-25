#!/bin/sh

cd /v2ray

apk update
apk add --no-cache wget unzip
mkdir ./v2ray-linux-64
cd v2ray-linux-64
wget https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip
unzip ./v2ray-linux-64.zip
rm ./v2ray-linux-64.zip
rm ./v2ray-linux-64/config.json 
v2ray --config=./config.json
