# Setup
This project tries to solve the amount of time spent in configuration when having to start working regularily in a new computer.
Either because your workstation gets renewed after that 5M fund raising series, because you have to use your grandmother's netbook to fix a bug in production during your holidays or because yours just crashed, the motivation behind this project is to simplify as much as possible that set-up by pursuing immutable infrastructure applied to personal workstations.
You can consider it as a distro customization layer for developers that runs on top of your favourite base distribution, so it gets easier to change between them as needed. 

The idea is to improve it with time in a good balance between useful, light and pretty (yes, I will try to do that extra effort of customizing ugly Linux applications).

DISCLAIMER: This are my configs, they fit my style of working and improves my productiveness in my current distro (Debian), any suggestions on cool improvements, additions, styling or compatibility will be more than welcomed, but if it doesn't suits you, I recommend you to fork this repo and use it as a template.

## Requirements
* ansible: To run the ansible playbook
* git: To pull it from current repository

## How-to install
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
