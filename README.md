# home-k8s
Automation scripts for the home Rapberry Pi K8s cluster

## Pre-requisites

1. Install Ansible. Check out https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html. 
    - I was using WSL 2 on Ubuntu, so I followed https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu

## Process
1. Flash SD card with latest Ubuntu Server image for Raspberry Pi
2. Boot Raspberry Pi
3. Execute `configure.sh`:
    - `> chmod +x configure.sh`
    - `> ./configure.sh`
