#!/bin/sh

sudo ansible-playbook local-setup.yml
sudo ansible-playbook ssh.yml -i hosts.yml
ansible-playbook prepare.yml -i hosts.yml
ansible-playbook control-plane.yml -i hosts.yml
ansible-playbook nodes.yml -i hosts.yml
ansible-playbook validate-cluster.yml -i hosts.yml