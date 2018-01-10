FROM centos:7

RUN mkdir -p /var/sox-builder/
WORKDIR /var/sox-builder/

COPY ./scripts/* /var/sox-builder/

RUN chmod u+x /var/sox-builder/*.sh

RUN ./yum-install.sh
RUN ./build-libgsm.sh
RUN ./build-libmad.sh
RUN ./build-sox.sh

CMD ["cp", "/usr/sox-14.4.2/bin/sox", "/output/sox"]
