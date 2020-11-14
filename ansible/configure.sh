#!/bin/sh

sudo ansible-playbook ssh.yml -i hosts.yml
ansible-playbook configure.yml -i hosts.yml