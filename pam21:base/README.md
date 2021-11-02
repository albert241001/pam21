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
