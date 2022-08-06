#!/bin/bash

VAGRANT_LOG=info
VAGRANT_DEFAULT_PROVIDER=libvirt

# Vagrant has a bug in libvirt 0.7 provider starting in parallel
#vagrant up --provider libvirt --no-parallel

vagrant up slurm-c1-head1
vagrant up slurm-c1-node1 slurm-c1-node2 slurm-c1-node3
