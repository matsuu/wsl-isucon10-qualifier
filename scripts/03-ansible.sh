#!/bin/sh

set -e

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y ansible curl git 

git clone --depth=1 -b fixed https://github.com/matsuu/isucon10-qualify.git
(
	cd isucon10-qualify/provisioning/ansible
	ansible-playbook --connection=local -i allinone, allinone.yaml
)
rm -rf isucon10-qualify
apt-get remove -y --purge ansible
apt-get autoremove -y
#
