# docker-postgresql-data

This project create a data container for fferriere-postgresql-server container

Build
-----

To build container run `build.sh` script.
You can personnalize image name with `FFERRIERE_PG_DATA_IMAGE` variable.
Exemple:
```
$ FFERRIERE_PG_DATA_IMAGE="prefix/pg-data" build.sh
```

Run
---

To run container run `run.sh` script.
You can personnalize container name with `FFERRIERE_PG_DATA_NAME` variable and image name with `FFERRIERE_PG_DATA_IMAGE`.
Exemple:
```
$ FFERRIERE_PG_DATA_IMAGE="prefix/pg-data" FFERRIERE_PG_DATA_NAME="prefix-pg-data" run.sh
```

