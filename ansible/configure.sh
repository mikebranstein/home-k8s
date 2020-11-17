#!/bin/sh

sudo ansible-playbook ssh.yml -i hosts.yml
ansible-playbook prepare.yml -i hosts.yml