#!/bin/bash

echo "ubuntu image downloading.."
vagrant box add precise64 http://files.vagrantup.com/precise64.box

echo "vagrant init precise64"
rm -rf .vagrant
rm -f Vagrantfile
vagrant init


cp -f Vagrantfile-ansible Vagrantfile

echo "ubuntu image up.."
vagrant up
