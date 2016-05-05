# Dockerised COPS

Docker image for [COPS (Calibre OPDS server)](https://github.com/seblucas/cops)

### Environment Variables

* `COPS_TITLE`: Override cops_title_default in config_local.php

### Usage
````bash
docker run -d \
    --name cops \
    -e COPS_TITLE="My eBook Library" \
    -v /data/books:/books:ro \
    mitcdh/cops
````

### Volumes
* `/books`: Mount point for the calibre library

### Exposed Ports
* `80`: http web server

### Credits
* COPS by Sébastien Lucas (https://github.com/seblucas/cops)
* Docker container (https://github.com/chickenzord/docker-alpine-cops) for a lazy way of changing config_local.php