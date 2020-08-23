#!/bin/bash

# unpack splunk install file into opt/splunk

# unpack splunk/etc to opt/splunk/etc 

# 

# install ansible using pip 

# download pip install script to pwd
curl -O https://bootstrap.pypa.io/get-pip.py

# run the script from pwd

python3 ./get-pip.py

# install ansible via pip (might need sudo permissions)

pip install ansible