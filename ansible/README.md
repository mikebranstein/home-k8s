# home-k8s
Automation scripts for the home Rapberry Pi K8s cluster

## Pre-requisites

1. Install Ansible. Check out https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html. 
    - I was using WSL 2 on Ubuntu, so I followed https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu

## Process
1. Flash SD card with latest Ubuntu Server image for Raspberry Pi
2. Boot Raspberry Pi
3. Deploy the k8s cluster with baseline configuration.

    Prepare local system: 

    ```
    > sudo ansible-playbook local-setup.yml -i hosts.yml
    ```
    
    Reset RPi4 password and setup SSH.
    
    ```
    > sudo ansible-playbook ssh.yml -i hosts.yml
    ```
    
    Install and update packages.
    
    ```
    > ansible-playbook prepare.yml -i hosts.yml
    ```

    Install and configure control plane.
    
    ```
    > ansible-playbook control-plane.yml -i hosts.yml
    ```

    Join nodes to cluster.
    
    ```
    > ansible-playbook nodes.yml -i hosts.yml
    ```

4. Validate cluster is running by deploying and querying multi-replica, load balanced kube-verify app

    Run cluster validation.
    
    ```
    > ansible-playbook validate-cluster.yml
    ```