# Scripts .Bat i .Sh
He generat una serie d'scripts per a bash i powershell, executant-se en cmd, que façilitarien certes feines. 
## Bash
### SystemInfo
Un script que en la execucio mostra diferents informacions del sistema

### MassGenerateUsers
Genera usuaris desde un fitxer csv en la mateixa carpeta, si no estan en la mateixa carpeta no funciona !!, cal que l'usuari segueixi unes normes per a que la contrasenya sigui acceptada
per tant cal tenir en compte no utilitzar paraules simples i ha d'incloure Majuscules, Minuscules, Numeros, Simbols, sense repeticions de paraules en el diccionari.

### Process Monitor Script
Genera un fitxer txt amb el resultat d'una comanda top

### Backup
Genera un backup d'una carpeta determinada en una carpeta determinada, canviant les rutes es podria canviar a on va guardat pero si es guarda fora del repositori no es guardara a github al fer el git push

## Powershell
### ListUsers
Mostra una llista dels usuaris

### MassGenerateUsers
Crea usuaris desde un fitxer csv en la mateixa carpeta, no te restriccions de contrasenya, si el nom del usuari ja esta utilitzat donara un error en aquell intent...
