#! /bin/bash

useradd -m -s /bin/bash unix01
useradd -m -s /bin/bash unix02
useradd -m -s /bin/bash unix03
echo -e "unix01\nunix01" | passwd unix01
echo -e "unix02\nunix02" | passwd unix02
echo -e "unix03\nunix03" | passwd unix03

mv /opt/docker/login.defs /etc/login.defs
mv /opt/docker/ldap.conf /etc/ldap/ldap.conf
mv /opt/docker/nslcd.conf /etc/nslcd.conf
mv /opt/docker/nsswitch.conf /etc/nsswitch.conf
mv /opt/docker/com* /etc/pam.d/
mv /opt/docker/pam_mount.conf.xml /etc/security/


/etc/init.d/nslcd start
/etc/init.d/nscd start
getent passwd
getent group
pip install python-pam

/bin/bash



