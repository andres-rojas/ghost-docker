# ghost-docker
Simple Docker container for running Ghost

## Configuration
- You'll want to customize [config/config.js](https://github.com/andres-rojas/ghost-docker/blob/master/config/config.js)

## Running
```
docker run -dP breakyboy/ghost
```

- Preferably (but not necessarily) run as a detached (`-d`) container
- Exposes port 2368 (`-P` or `-p`)
- Data volume set to `/var/lib/ghost` within the container
- Set your desired Ghost environment with the `NODE_ENV` environemnt variable
    - e.g. `-e NODE_ENV=production`

## Utility Containers

### ghost-backup
Backs up the data volume of an existing ghost-docker container to a timestamped `.tar.xz` file.

#### Running the container
```
docker run --volumes-from $ghost -v $local_backup:/backup --rm breakyboy/ghost-backup
```

where:
- `$ghost` is the name of the ghost-docker container you wish to backup
- `$local_backup` is the absolute path to the local directory where you would like to store the backup file

### ghost-restore
Restore the data volume of an existing ghost-docker container from a ghost-backup-generated backup file.

#### Requirements / Notes
- The ghost-docker container must be stopped while ghost-restore is run
- It will always restore from the most recent backup

#### Running the container
```
docker run --volumes-from $ghost -v $local_backup:/backup --rm breakyboy/ghost-restore
```

where:
- `$ghost` is the name of the ghost-docker container you wish to restore your backup to
- `$local_backup` is the absolute path to the local directory where your backup files are located
