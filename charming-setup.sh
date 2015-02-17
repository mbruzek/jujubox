#!/bin/bash

HOME=/home/ubuntu

git clone https://github.com/juju/plugins.git ${HOME}/.juju-plugins

chown -R ubuntu:ubuntu ${HOME}

RC=${HOME}/.bashrc
echo "export JUJU_HOME=${HOME}/.juju" >> $RC
echo "export JUJU_REPOSITORY=${HOME}" >> $RC
echo "export PROJECT_HOME=${HOME}" >> $RC
echo "export PATH=$PATH:${HOME}/.juju-plugins" >> $RC
