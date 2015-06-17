FROM fferriere/base

MAINTAINER ferriere.florian@gmail.com

RUN mkdir /var/lib/postgresql; \
    chown 102:105 /var/lib/postgresql;

VOLUME ["/var/lib/postgresql"]

ENTRYPOINT ["true"]
