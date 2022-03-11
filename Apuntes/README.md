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


