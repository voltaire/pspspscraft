FROM amazoncorretto:8-alpine-jre
WORKDIR /srv/
COPY --from=voltairemc/spigot-server /spigot.jar /srv/spigot.jar
ADD run /srv/run
RUN echo 'eula=true' > /srv/eula.txt
ADD spigot.yml /srv/spigot.yml
ADD server.properties /srv/server.properties
ADD whitelist.json /srv/whitelist.json
CMD ["/srv/run"]