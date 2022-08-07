#!/bin/bash

VAGRANT_LOG=info
VAGRANT_DEFAULT_PROVIDER=libvirt

# Vagrant has a bug in libvirt 0.7 provider starting in parallel
#vagrant up --provider libvirt --no-parallel

# Having further trouble with reliable vm creation
vagrant up --no-provision
vagrant provision
vagrant hostmanager
vagrant sshfs
