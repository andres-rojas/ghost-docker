# ghost-backup
Backs up the data volume of an existing ghost-docker container to a timestamped `.tar.xz` file.

## Running the container
```Shell
docker run --volumes-from $ghost -v $local_backup:/backup --rm breakyboy/ghost-backup
```

where:
- `$ghost` is the name of the ghost-docker container you wish to backup
- `$local_backup` is the absolute path to the local directory where you would like to store the backup file
