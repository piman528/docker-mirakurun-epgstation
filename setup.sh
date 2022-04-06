#!/bin/sh

sudo git clone https://github.com/piman528/docker-mirakurun-epgstation.git
cd docker-mirakurun-epgstation
sudo cp docker-compose-sample.yml docker-compose.yml
sudo cp epgstation/config/enc.js.template epgstation/config/enc.js
sudo cp epgstation/config/config.yml.template epgstation/config/config.yml
sudo cp epgstation/config/operatorLogConfig.sample.yml epgstation/config/operatorLogConfig.yml
sudo cp epgstation/config/epgUpdaterLogConfig.sample.yml epgstation/config/epgUpdaterLogConfig.yml
sudo cp epgstation/config/serviceLogConfig.sample.yml epgstation/config/serviceLogConfig.yml
sudo docker-compose run --rm -e SETUP=true mirakurun
