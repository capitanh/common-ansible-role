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
* exa
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

Manual Release process
----------------------
To perform a manual release, make sure yoy have exportd the two following environment variables:
* GITHUB_TOKEN (Personal github access token)
* ANSIBLE_GALAXY_API_KEY (Personal Galaxy web repo API Key, you can get one here: https://galaxy.ansible.com/me/preferences)

after commiting all changes just run:
```bash
gradle release
```

Make sure to have ANSIBLE_GALAXY_API_KEY exported environment variable with your personal API Key (https://galaxy.ansible.com/me/preferences), then import the new version into Ansible Galaxy repo:
```bash
ansible-galaxy role import -v --token $ANSIBLE_GALAXY_API_KEY --role-name capitanh.common_ansible_role capitanh common-ansible-role
```

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

