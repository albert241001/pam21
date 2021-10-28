#! /bin/bash

useradd unix01
useradd unix02
useradd unix03

echo -e "unix01\unix01" | passwd --stdin unix01
echo -e "unix02\unix02" | passwd --stdin unix02
echo -e "unix03\unix03" | passwd --stdin unix03

cp /opt/docker/login.defs /etc/login.defs

/bin/bash
