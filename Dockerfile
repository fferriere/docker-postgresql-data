FROM fferriere/base

MAINTAINER ferriere.florian@gmail.com

ADD files /etc/

RUN mkdir /var/lib/postgresql; \
    mkdir /var/run/postgresql; \
    mkdir /var/log/postgresql; \
    chown 102:105 /var/lib/postgresql; \
    chown 102:105 /var/run/postgresql; \
    chown 102:105 /var/log/postgresql; \
    chown -R 102:105 /etc/postgresql/;

VOLUME [ "/var/lib/postgresql", "/var/run/postgresql", "/var/log/postgresql", "/etc/postgresql" ]

ENTRYPOINT ["true"]
