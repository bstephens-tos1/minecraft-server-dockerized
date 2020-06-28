FROM openjdk:latest AS base_jdk

FROM base_jdk AS base_server
ADD https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar ./server.jar
COPY ./server.properties ./
COPY ./eula.txt ./
CMD java -Xmx1024M -Xms1024M -jar server.jar nogui