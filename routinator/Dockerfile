FROM nlnetlabs/routinator:v0.6.4

# TODO, it should not be necessary to run with root

#USER 0
#RUN mkdir -p /root/.rpki-cache/repository
#RUN mkdir -p /root/.rpki-cache/tals

RUN touch /home/routinator/log
COPY ./.routinator.conf /home/routinator/.routinator.conf
COPY ./init.sh /
