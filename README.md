General utilities ansible role
=========
Used to bootstrap config of every new host. It performs the following tasks:

* Creates an admin user and makes it sudoer
* Sets motd
* Sets custom bash prompt
* Enables ssh password authentication
* Downloads and install micro editor

It also install following packages:

* git
* mc (Midnight Commander)
* htop
* wget
* tmux (Terminal multiplexer)
* vim
* unzip
* lnav (Log files navigator)


Requirements
------------
None

Role Variables
--------------
This role requires the following variables to be defined elsewhere in the playbook that uses it:
```yaml
    admin_user:           admin             # Administration user for all hosts
    admin_password:       admin             # Admin user password
```
All of them are already defined in /defaults/main.yml, feel free to overwrite them

Dependencies
------------
None

Example Playbook
----------------
Register the role in requirements.yml:
```yaml
    - src: capitanh.common_ansible_role
      name: common
```
Include it in your playbooks:
```yaml
    - hosts: servers
      roles:
      - common
```
License
-------
BSD
