# docker-postgresql-data

This project create a data container for fferriere-postgresql-server container.
The container is based on [docker-postgresql-base](https://github.com/fferriere/docker-postgresql-base) image.

## Build

To build container run `build.sh` script.
You can customize image name with `FFERRIERE_PG_DATA_IMAGE` variable.
Example:
```
$ FFERRIERE_PG_DATA_IMAGE="prefix/pg-data" build.sh
```

## Run

To run container run `run.sh` script.
You can customize container name with `FFERRIERE_PG_DATA_NAME` variable and image name with `FFERRIERE_PG_DATA_IMAGE`.
Example:
```
$ FFERRIERE_PG_DATA_IMAGE="prefix/pg-data" FFERRIERE_PG_DATA_NAME="prefix-pg-data" run.sh
```

## Persistence

You can choose to mount volumes on container for more persistence.
For that you can customize four variables, one by volume.
- `FFERRIERE_PG_DATA_LIB_PATH` bind on `/var/lib/postgresql`
- `FFERRIERE_PG_DATA_LOG_PATH` bind on `/var/log/postgresql`
- `FFERRIERE_PG_DATA_RUN_PATH` bind on `/var/run/postgresql`
- `FFERRIERE_PG_DATA_ETC_PATH` bind on `/etc/postgresql`

### Careful

If you use `FFERRIERE_PG_DATA_ETC_PATH` volume on run without used on build,
you should copy files from `./files/etc/postgresql` inside.
