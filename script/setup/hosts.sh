#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v
# Download the list of default hosts to block (malware, adware)
curl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts > /etc/hosts
# Add my own amount of hosts
cat "${PWD}/hosts" >> /etc/hosts
