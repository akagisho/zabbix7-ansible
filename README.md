# zabbix6-ansible

Set up Zabbix 6.0 server using by Ansible.

## Requirements

* Ubuntu Server 22.04
* Ansible

For local development environment:

* VirtualBox
* Vagrant

## Usage

### production

First of all, set up Ubuntu 22.04 to the server.

Create Ansible inventory file.

    $ ${EDITOR} inventories/production/hosts
    [default]
    zabbix.example.com  ansible_ssh_user=admin

Run ansible playbook.

    $ ansible-playbook -i inventories/production/hosts site.yml

Login to Zabbix frontend.

* http://zabbix.example.com/<br>(Admin / zabbix)

### local vagrant

Run ansible playbook.

    $ vagrant up
    $ vagrant provision
