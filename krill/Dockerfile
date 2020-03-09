FROM nlnetlabs/krill:v0.5.0

# TODO make some props dynamic

run apk add rsync

ENV KRILL_CLI_TOKEN=we-go-hard
ENV KRILL_AUTH_TOKEN=we-go-hard
ENV KRILL_FQDN=172.19.0.100:3000
ENV TZ=Europe/Amsterdam
ENV KRILL_TEST=true
ENV KRILL_CLI_SERVER=https://localhost:3000/
ENV KRILL_CLI_MY_CA=CCF-CA
ENV KRILL_USE_TA=true
ENV KRILL_REPO_ENABLED=true

COPY ./bootstrap.sh /var/krill/
COPY ./roas.txt  /var/krill/
COPY ./rsyncd.conf /etc/
COPY ./entrypoint.sh /opt/entrypoint.sh

EXPOSE 3000

#RUN rsync --daemon



