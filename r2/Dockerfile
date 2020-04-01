FROM        frrouting/frr:frr-7.3

RUN     apk update \
			--repository http://dl-cdn.alpinelinux.org/alpine/v3.10/main \
			--repository http://dl-cdn.alpinelinux.org/alpine/v3.10/community \
		&& apk upgrade \
			--repository http://dl-cdn.alpinelinux.org/alpine/v3.10/main \
			--repository http://dl-cdn.alpinelinux.org/alpine/v3.10/community \
		&& apk add vim \
		&& rm -rf /var/cache/apk/*

COPY    ./daemons  /etc/frr/daemons

COPY     ./bgpd.conf /etc/frr/bgpd.conf
RUN     chown frr /etc/frr/bgpd.conf
RUN     chgrp frr /etc/frr/bgpd.conf
RUN     chmod u=rw,g=r,o= /etc/frr/bgpd.conf
