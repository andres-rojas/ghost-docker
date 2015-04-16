# ghost-restore
Restore the data volume of an existing ghost-docker container from a ghost-backup-generated backup file.

## Requirements / Notes
- The ghost-docker container must be stopped while ghost-restore is run
- It will always restore from the most recent backup

## Running the container
```Shell
docker run --volumes-from $ghost -v $local_backup:/backup --rm breakyboy/ghost-restore
```

where:
- `$ghost` is the name of the ghost-docker container you wish to restore your backup to
- `$local_backup` is the absolute path to the local directory where your backup files are located
