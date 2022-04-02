#!/bin/bash

function install_epel_package {
   sudo yum install epel-release -y
}

function deploy_nginx {
   sudo yum install nginx -y
   sudo systemctl start nginx
}


function persist_httpserver {
   sudo systemctl enable nginx
}


function create_index {
   cp -v /usr/share/nginx/html/index.html /usr/share/nginx/html/backup.html
   echo "<h1>Hola mi nombre es Carlos</h1>" > /usr/share/nginx/html/index.html
}

function main {
   install_epel_package
   deploy_nginx
   create_index
   persist_httpserver
}
main



