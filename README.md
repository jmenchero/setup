# Setup
Configs to setup my workstation.

## Requirements
* ansible: To run the ansible playbook
* git: To pull it from current repository

## How-to
```
sudo ansible-pull -U https://github.com/jmenchero/setup.git
```

## System packages
Collection of linux systems packages for:
* Daily use
* System management
* Programming

## Bash commands
Bash commands for actions related with:
* Docker
* Python
* Memory

## Oh-My-Zsh configs
Custom configurations for Oh-My-Zsh

## Debugging tips
Execute a dry-run installation in local to properly check some syntax and errors beforehand:
```
sudo ansible-playbook local.yml --check
```
