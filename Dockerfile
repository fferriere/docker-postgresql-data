FROM fferriere/postgresql-base

MAINTAINER ferriere.florian@gmail.com

ADD files/entrypoint.sh /usr/local/bin/
ADD files/etc/ /etc/

VOLUME [ "/var/lib/postgresql", "/var/run/postgresql", "/var/log/postgresql", "/etc/postgresql" ]

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
