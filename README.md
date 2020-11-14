# home-k8s
Automation scripts for the home Rapberry Pi K8s cluster

## Pre-requisites

1. Install Ansible. Check out https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html. 
    - I was using WSL 2 on Ubuntu, so I followed https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu
2. Install sshpass. This is required to send a password via SSH for the very first Raspberry Pi bootstrap command
    - `> sudo apt-get install sshpass -y`

## Process
1. Flash SD card with latest Ubuntu Server image for Raspberry Pi
2. Boot Raspberry Pi
3. Run the SSH bootstrapping process via Ansible. This adds an SSH key to the Raspberry Pi and disabled password logins
    - `> ansible-playbook ssh.yml -i hosts.yml`
4. 