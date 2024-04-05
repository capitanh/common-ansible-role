[![.github/workflows/release.yml](https://github.com/capitanh/common-ansible-role/actions/workflows/release.yml/badge.svg?branch=master)](https://github.com/capitanh/common-ansible-role/actions/workflows/release.yml) 
[![](https://img.shields.io/badge/powered%20by-Nyx-blue)](https://github.com/mooltiverse/nyx)

General utilities ansible role
=========
Used to bootstrap config of every new host. It performs the following tasks:

* Creates an admin user and makes it sudoer
* Sets motd
* Sets custom zsh prompt
* Enables ssh password authentication

It also install following packages:

* git
* tig
* htop
* wget
* tmux
* vim
* unzip
* lnav
* pydf
* lfm
* httpie
* bat
* micro
* eza
* shellcheck
* yadm
* jq
* python3-pip
* direnv
* pass

Automatic Release process
--------------------------
There is a github action to perform a fully automated release process. Just make sure to provide correct conventional commits message:

```bash
git commit [--allow-empty] -am "[fix|feat|BREAKING]: Your message here"
git push
```
The process uses conventional commits to increase version numbers according to the following commit prefixes:
* fix: Increase patch
* feat: Increase minor
* BREAKING: Increase mayor

Role Variables
--------------
This role requires the following variables to be defined elsewhere in the playbook that uses it:
```yaml
admin_user:           admin                     # Administration user for all hosts
admin_password:       admin                     # Admin user password
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
Apache License, Version 2.0

