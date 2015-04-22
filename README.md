# ghost-docker
Simple Docker container for running [Ghost](https://github.com/TryGhost/Ghost/)

## Configuration
- You'll want to customize [config/config.js](https://github.com/andres-rojas/ghost-docker/blob/master/config/config.js)

## Running
```Shell
docker run -dP breakyboy/ghost
```

- Preferably (but not necessarily) run as a detached (`-d`) container
- Exposes port 2368 (`-P` or `-p`)
- Data volume set to `/var/lib/ghost` within the container
- Set your desired Ghost environment with the `NODE_ENV` environment variable
    - e.g. `-e NODE_ENV=production`
