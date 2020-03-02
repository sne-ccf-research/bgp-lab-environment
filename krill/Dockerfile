FROM nlnetlabs/krill:v0.5.0

# TODO make some props dynamic

ENV KRILL_CLI_TOKEN=we-go-hard
ENV KRILL_AUTH_TOKEN=we-go-hard
ENV KRILL_FQDN=localhost:3000
ENV TZ=Europe/Amsterdam
ENV KRILL_TEST=true
ENV KRILL_CLI_SERVER=https://localhost:3000/
ENV KRILL_CLI_MY_CA=CCF-CA
ENV KRILL_USE_TA=true
ENV KRILL_REPO_ENABLED=true

COPY krillsetup.sh /usr/local/bin/krillsetup.sh

CMD ["/bin/bash", "/usr/local/bin/krillsetup.sh"]

