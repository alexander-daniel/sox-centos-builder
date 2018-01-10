FROM centos:7

RUN mkdir -p /var/sox-builder/
WORKDIR /var/sox-builder/

COPY ./scripts/* ./scripts/
RUN chmod u+x ./scripts/*.sh

RUN ./scripts/yum-install.sh
RUN ./scripts/build-libgsm.sh
RUN ./scripts/build-libmad.sh

COPY ./run.sh ./
RUN chmod u+x run.sh

CMD ["./run.sh"]
