#!/bin/bash
echo "Setup teamcity"
cd ~/
wget https://download.jetbrains.com/teamcity/TeamCity-9.1.6.tar.gz
tar -zxvf TeamCity-9.1.6.tar.gz
rm -rf TeamCity-9.1.6.tar.gz
echo done
