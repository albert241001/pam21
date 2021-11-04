# PAM

-->La seguretat de las aplicacions s'evita mitjançant pam que funciona de forma modular(es poden posra o no posar els moduls)

-->Has de configurar els programes perque utilitzin el pam
 
```
docker run --rm --name pam.edt.org -h pam.edt.org --network 2hisix -it albert241001/pam21:base /bin/bash
```

*# The PAM configuration file for the Shadow `chfn' service*
**-auth    required        pam_unix.so**
**-account sufficient      pam_permit.so**

*authentification*

**authentication es demostrar que si eres pere seas pere(por ejemplo sabiendo sus credenciales/otras opciones)**

**authoritzation (no es en pam(se parece a auth)) es una vez sabemos que eres pere si tenemos los permisos para hacer lo que queramos)**

*account*

**comprova si esta caducada la compte//si esta fora horari**

*password*

**regles que tenen que veure a com establir/modificar la password/metode d'autetificació**

*session*

**cosas a hacer antes de iniciar o cerrar la session de usuario**

*control:*

*optional*

**si va be o va malament no te importancia a menys que sigui el unic modul del stack**

*sufficient*

**si accepta continua ja que va be a menys que h hagi un required abans//si fracasa se ignora y continua con la siguiente autentificacion**

*required*

**si falla donara finalment fallo**

*requisite*

**si falla donara fala esta relacionat amb el primer required/requisite**

para iniciar con usuarios ldap primero entrar con un usuario local

-->Al entrar con los usuarios creados (unix01-03) debemos poner los nombres bien para no liarnos

-->instalaremos pam mount//se carga en auth(autentifica) y en session(fa el montatge) pma_mount.xml.conf create dir 100MB en la home 

--> instalar pam ldap y nss y mirar que se confgura al hacer interactivamente

1-->
```
<volume fstype="tmpfs" mountpoint="/home/%(USER)/tmp" options="size=100M,uid=%(USER),mode=0700" />
```
2-->
```
<volume user="unix01" fstype="tmpfs" mountpoint="/home/%(USER)/tmp" options="size=200M,uid=%(USER),mode=0700" />
```
3-->
```
<volume user="unix02" fstype="nfs" server="172.18.0.1" path="/mnt/nfs_share" mountpoint="/home/%(USER)/t>
```

```
 sudo apt update
 sudo apt install nfs-kernel-server
 sudo mkdir -p /mnt/nfs_share
 sudo chown -R nobody:nogroup /mnt/nfs_share/
 sudo chmod 777 /mnt/nfs_share/
 sudo vim /etc/exports
 sudo exportfs -a
 sudo systemctl restart nfs-kernel-server
 sudo ufw allow from 172.18.0.0/16 to any port nfs
 sudo ufw enable
 sudo ufw status
 sudo nano /etc/exports
	/mnt/nfs_share  172.18.0.0/16(rw,sync,no_subtree_check)
```
