#!/bin/bash -eux

# Install Ansible.
sudo yum -y install epel-release
sudo yum -y install git python-setuptools gcc sudo libffi-devel python-devel openssl-devel ansible ansible-galaxy
sudo yum clean all