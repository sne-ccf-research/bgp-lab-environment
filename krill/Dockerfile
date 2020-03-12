FROM nlnetlabs/krill:v0.5.0

# TODO make some props dynamic

ENV KRILL_CLI_TOKEN=we-go-hard
ENV KRILL_AUTH_TOKEN=we-go-hard
ENV KRILL_FQDN=localhost:3000
ENV TZ=Europe/Amsterdam
ENV KRILL_TEST=true
ENV KRILL_CLI_SERVER=https://127.0.0.1:3000/
ENV KRILL_CLI_MY_CA=CCF-CA
ENV KRILL_USE_TA=true
ENV KRILL_REPO_ENABLED=true

<<<<<<< Updated upstream
COPY krillsetup.sh /usr/local/bin/krillsetup.sh

CMD ["/bin/bash", "/usr/local/bin/krillsetup.sh"]
=======
COPY ./bootstrap.sh /var/krill/
COPY ./roas.txt  /var/krill/
COPY ./rsyncd.conf /etc/
COPY ./entrypoint.sh /opt/entrypoint.sh

EXPOSE 3000
EXPOSE 3001

#COPY krillsetup.sh /usr/local/bin/krillsetup.sh

#CMD ["/bin/bash", "/var/krill/bootstrap.sh", "--host", "0.0.0.0"]`
>>>>>>> Stashed changes

