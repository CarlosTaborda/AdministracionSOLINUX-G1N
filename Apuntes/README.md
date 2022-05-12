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

# Redirecciones y tuberias

`0` stdin salida estandar con error y sin error <br>
`1` stdout normal sin errores <br>
`2` stderr salida con errores <br>

<b style="color:blue" > > </b> Cambia el conenido del archivo de texto

<b  style="color:blue"> >> </b> Agrega un contenido a un archivo manteniendo el anterior

<b  style="color:blue">|</b>

## Firewall
`firewall-cmd --list-all`
<br> Para añadir un puerto al firewall 
`sudo firewall-cmd --zone=public --permanent --add-port=f3306/tcp`

## DNS
`cat /etc/resolv.conf`

## Gateway
`route -n`
para saber si tiene internet ejecutar el comando anterior, luego hacer ping a la direccion del gateway y si responde paquetes  tiene internet

## SE linux
`cat /etc/selinux`
para ver el estado utilizamos `getenforce` o para establecerlo usamos `setenforce [valor]` (0 permisive, 1 enforcing) para desabilitar editamos el archivo `/etc/selinux` colocamos <span style="color: #063970">
SELINUX=disabled</span>


taller instalar mysql en una maquina, luego intentar acceder al puerto con telnet, luego agregar el puerto al firewall `telnet ip 3306`
para consultar la ip usamos ip a s

## Gestión de Discos


particionar un disco
`fdisk` 4 particiones
`gdisk` mas de 4 particiones

<br>

saber informacion del disco
`sudo parted /dev/[disco] unit MB print free`

particionar un disco
`fdisk /dev/sdb`
para confirmar `partprobe -s`

para formatear una particion `mkfs.[extension] /dev/[disco]`
-- crear carpeta para montar disco
`mkdir /mnt/disconnuevo`

para montar disco
`mount /dev/[particion] /mnt/disconuevo`

`df -Th` para ver particiones montadas

para desmontar

`unmount /mnt/disconuevo`

para persistir los cambios
editar `/etc/fstab` 
usamos `blkid` para obtener uuid
`partprobe -s`


