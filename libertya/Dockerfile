FROM debian:buster

ADD jdk-8u202-linux-x64.tar.gz /opt

RUN useradd -ms /bin/bash libertya

ADD ServidorOXP/ /ServidorOXP
RUN chown -R libertya:libertya /ServidorOXP
RUN mkdir /var/run/libertya
RUN chown libertya:libertya /var/run/libertya

USER libertya

ENV OXP_HOME=/ServidorOXP
ENV JAVA_HOME=/opt/jdk1.8.0_202
ENV PATH="${PATH}:${JAVA_HOME}/bin"

WORKDIR /ServidorOXP
RUN ./ConfigurarAuto.sh
CMD ./utils/IniciarServidor.sh

EXPOSE 1099
EXPOSE 8080
EXPOSE 8443
