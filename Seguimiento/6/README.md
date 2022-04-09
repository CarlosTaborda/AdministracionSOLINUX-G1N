## Taller 6
Carlos Felipe Aguirre Taborda

## 1) Crear un grupo llamado <span style="color:#3250a8"> infraestructura</span> con GID 777

Ejecutamos el comando `groupadd -g 7777 infraestructura`, luego con el comando <b>tail</b> sobre el archivo /etc/group verificamos que el grupo este creado.

<img src="./img/create_group.PNG" />

## 2) Crear un usuario llamado <span style="color:#3250a8">webserver</span> que pertenezca al grupo 

usamos el comando <b>useradd</b> para crear un nuevo usuario y luego usamos <b>usermod</b> para añadir el usuario <b>infraestructura</b> al grupo <b>webserver</b>.

<img src="./img/groups.PNG" />

## 3) Desinstalamos el servidor de nginx `yum remove nginx`

<img src="./img/remove.png" />

## 4) Usar el script del taller anterior y modificarlo para instalar el paquete httpd

Modificamos el script y cambiamos el paquete <b>nginx</b> por <b>httpd</b>
<img src="./img/modified_script.png" />

Ahora ejecutamos el script `sh deploy_web.sh`

<img src="./img/install_httpd.png" />

Verificamos la dirección IP con el comando `ip address`

<img src="./img/ipaddress.png" />





