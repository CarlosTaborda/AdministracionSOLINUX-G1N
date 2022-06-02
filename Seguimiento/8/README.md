# Compilar y ejecutar aplicaciones SpringBoot con docker

<h2 align="center"></p><img src="https://raw.githubusercontent.com/GeanDev2022/AdministracionSOLINUX-G1N/master/Seguimiento/Taller9/img/descarga.png"/></h2>

Docker es una tecnología de que nos permite mantener ambientes comunes y para todos los desarrolladores, a través de imágenes y contenedores que funcionan de una forma similar a las máquinas virtuales, pero mucho más eficiente, ya que no poseen la capa que actúa de intermediario entre las máquinas virtuales y el sistema operativo anfitrión.

Docker se puede usar de dos formas distintas con spring boot la primera es utilizar un contenedor que nos permita únicamente correr el proyecto.

<span style="color:#0047ab">Dockerfile-build</span>
```
FROM openjdk:17.0.2-jdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "./app.jar"]
```

La otra forma es la combinación de la  <b>compilación y ejecución</b>

<span style="color:#0047ab">Dockerfile-build</span>
```
# syntax=docker/dockerfile:1
FROM eclipse-temurin:17-jdk-apline

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
```

según el funcionamiento que deseemos copiaremos el dockerfile dentro de la carpeta de nuestro proyecto y procedemos a ejecutar `docker build -f Dockerfile-build -t [image_name] .` una vez creado la imagen corremos el contenedor `docker run -p [host_port]:8080 -t [image_name]`