FROM openjdk:8

WORKDIR /root

#RUN echo "eula=true" > /usr/local/bin/eula.txt

RUN curl https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar -o /usr/local/bin/server.jar

CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "/usr/local/bin/server.jar", "nogui"]
