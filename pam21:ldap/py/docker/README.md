# PAM

-->La seguretat de las aplicacions s'evita mitjançant pam que funciona de forma modular(es poden posra o no posar els moduls)

-->Has de configurar els programes perque utilitzin el pam
 
```
docker run --rm --privileged --name pam.edt.org -h pam.edt.org --network 2hisix -it albert241001/pam21:ldap /bin/bash
```


AP=Authentification provider(passwd ldap kerberos)
IP= Information provider (uid gid shell)
			 (passwd y ldap)



include
llama a otro fichero y si hay un die muere todo el programa
substack
llama a otro fichero y si hay un die continua fuera del substack
bad
negative pero continua
die
negatiu i finalitza
ok
succes pero no finalitza
done
succes pero finalitza

required
[success=ok new_authtok_reqd=ok ignore=ignore default=bad]
requisite
[success=ok new_authtok_reqd=ok ignore=ignore default=die]
sufficient
[success=done new_authtok_reqd=done default=ignore]
optional
[success=ok new_authtok_reqd=ok default=ignore]
