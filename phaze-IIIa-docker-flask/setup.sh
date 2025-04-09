#!/bin/bash

# Start the Vagrant environment
vagrant up

# SSH into the master node and run commands
vagrant ssh master -c "
  # Go to the shared Vagrant directory
  cd /vagrant/

  # Copy the hosts file to /etc/hosts
  sudo cp hosts /etc/hosts

  # Generate SSH key
  ssh-keygen

  # Copy SSH key to other nodes (default password: vagrant)
  ssh-copy-id test-node
  ssh-copy-id dev-node

  # Go to the ansible directory
  cd ansible/

  # Install Ansible
  sudo apt install ansible -y

  # Run Ansible command to check hostnames
  ansible nodes -i inventory -m command -a hostname

  # Run the Ansible playbook
  ansible-playbook -i inventory playbook-ex.yml
"

