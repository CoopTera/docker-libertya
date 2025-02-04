FROM debian:buster

ADD OpenJDK8U-jdk_x64_linux_hotspot_8u442b06.tar.gz /opt

RUN useradd -ms /bin/bash libertya

ADD ServidorOXP/ /ServidorOXP
RUN chown -R libertya:libertya /ServidorOXP
RUN mkdir /var/run/libertya
RUN chown libertya:libertya /var/run/libertya

USER libertya

ENV OXP_HOME=/ServidorOXP
ENV JAVA_HOME=/opt/jdk8u442-b06
ENV PATH="${PATH}:${JAVA_HOME}/bin"

WORKDIR /ServidorOXP
RUN ./ConfigurarAuto.sh
CMD ./utils/IniciarServidor.sh

EXPOSE 1099
EXPOSE 8080
EXPOSE 8443
