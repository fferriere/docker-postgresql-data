#!/bin/bash

chown -R postgres:postgres /var/lib/postgresql
chown -R postgres:postgres /var/run/postgresql
chown -R postgres:postgres /var/log/postgresql
chown -R postgres:postgres /etc/postgresql/
