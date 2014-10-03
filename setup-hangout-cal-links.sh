#!/usr/bin/env bash

sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo easy_install pip
sudo pip install py_applescript
sudo pip install dateutils
sudo pip install --upgrade google-api-python-client
sudo pip uninstall setuptools
curl https://bootstrap.pypa.io/ez_setup.py -o - | sudo python
sudo pip install pyobjc
mkdir ~/.hangoutFix
touch ~/.hangoutFix/client_secrets.json