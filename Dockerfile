FROM registry.access.redhat.com/ubi8/ubi:latest

RUN dnf -y install python3-pip && \
    mkdir -p /srv && \
    pip3 install mkdocs 

COPY ./  /srv/

Env HOSTNAME myhost

RUN echo $hostname

RUN chown -R 1001:0 /srv && \
    rm -f /srv/Containerfile

WORKDIR /srv

USER 1001

EXPOSE 8000
ENTRYPOINT ["mkdocs", "serve", "-a", "$myhost:8000" ]
