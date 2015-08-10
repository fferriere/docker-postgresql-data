FROM fferriere/postgresql-base

MAINTAINER ferriere.florian@gmail.com

ADD files /etc/

RUN mkdir /var/run/postgresql; \
    mkdir /var/log/postgresql; \
    chown postgres:postgres /var/run/postgresql; \
    chown postgres:postgres /var/log/postgresql; \
    chown -R postgres:postgres /etc/postgresql/;

VOLUME [ "/var/lib/postgresql", "/var/run/postgresql", "/var/log/postgresql", "/etc/postgresql" ]

ENTRYPOINT ["true"]
