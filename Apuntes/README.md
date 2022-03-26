### Comandos  basicos

ls<br>
alias<br>
rm -rf<br>
mkdir (crea un directorio) <br>
more <br>
less <br>
mv (renombrar arhivos y carpetas)<br>
sysmtenctl stop `service_name`

###  <a href="https://www.rootusers.com/how-to-reset-root-user-password-in-centos-rhel-7/">Reestablecer contraseña admin</a>
perionar la tecla e
<br> linea linux
cambiar <b>rhgb quiet</b> por <b>rd.break</b><br>
mount -o rw, remount /sysroot/<br>
chroot /sysroot/<br>
passwd (ingresar la nueva contraseña)<br>
touch /.autorelabel

## Comando tar
El comando tar sirve para comprimir y descomprimir archivos y/o directorios
`tar -cvf ejemplocomprimido.tar /home/directorio` (-c crear archivo, -v observar comportamiento -f el nombre del comprimido)

para descomprimir <br>

`tar -xvf ejemplocomprimido.tar` o si queremos especificar una ruta `tar -xvf ejemplocomprimido.tar -c /xxx/algunaruta`

Listar `tar -tvf ejemplocomprimido.tar`

Descomprimir multiples archivos `tar -xvf ejemplocomprimido.tar "file1" "file2"` comprimir multiples archivos
`tar -cf ejemplo.tar bar foo`

## Permisos
Los permisos tienen un numero asignado r:4, w:2, x:1, los permisos en linux  se dan para usuarios, grupos y otros

para establecer los permisos para un archivo o directorio usamos el comando <b>chmod</b> ejemplo: `chmod 777 [archivo/directorio]` otra forma de asignar permisos es con la letra correspondiente del responsable ejemplo `chmod u+r, u+w, u+x [archivo/directorio]` o `chmod u=rwx [archivo/directorio]`

## Manejar los procesos

Comando `top` pra mirar los procesos corriendo dentro del servidor, dentro de un servidor se ejecuta primero un `uptime` y se solicita un reinicio de seguridad si el numero de los 3 campos de la seguda fila es mayor a 2 el servidor esta sobrecargado, el comando `ps` nos sirve para ver los procesos que se estan ejecutando en el servidor.

Para terminar un servicio usamos el comando `kill -9 [PID]`

Para saber el tamaño de las particiones usamos el comando `df -h`

Para el tamaño de un directorio `du -sh [ruta/directorio]`


## Procesos en background

Para mandar un proceso a background usamos la combinacion de teclas `ctrl Z` y para mostrar el listado de trabajos en segundo plano usamos `jobs` y para retornar un comando a primer plano con el comando `fg %[ident_proceso]`

Para  modificar la prioridad de un proceso usamos el comando <b>nice</b> de la siguiente forma  `nice -n [prioridad] [comando]` la prioridad de los procesos esta entre (-20,20) siendo -20 la mayor prioridad

## Usuarios y groupos
los usuarios tienen un grupo principal y muchos secundarios, para ver en detalle los grupos de un usuario se usa `id [username]`
