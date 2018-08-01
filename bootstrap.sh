#!/bin/bash

echo "Installing Ansible..."
apt-get install -y software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install -y --force-yes ansible git tmux

su vagrant -c 'git clone --depth=1 https://github.com/Bash-it/bash-it.git ~vagrant/.bash_it'
su vagrant -c 'vagrant/.bash_it/install.sh --silent'
su vagrant -c 'curl http://j.mp/spf13-vim3 -L -o - | sh'
#source /home/vagrant/.bashrc

