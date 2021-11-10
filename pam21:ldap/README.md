# PAM

-->La seguretat de las aplicacions s'evita mitjançant pam que funciona de forma modular(es poden posra o no posar els moduls)

-->Has de configurar els programes perque utilitzin el pam
 
```
docker run --rm --privileged --name pam.edt.org -h pam.edt.org --network 2hisix -it albert241001/pam21:ldap /bin/bash
```


AP=Authentification provider(passwd ldap kerberos)
IP= Information provider (uid gid shell)
			 (passwd y ldap)
