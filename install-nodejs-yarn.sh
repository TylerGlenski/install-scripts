#!/bin/bash

# install nodejs required to install yarn
printf "---- First installing nodeJs ----"
curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -

sudo yum install nodejs

printf "---- Installing yarn via yum ----"
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo

sudo yum install yarn

yarn --version