# mapping-for-linguists

## Running locally

For running the docker way, you'll need docker installed. The easiest way to do this is with [Docker Desktop](https://www.docker.com/get-started/), but technically any platform that can build and run containers (like Rancher Desktop) will serve the same purpose.

First, build the container with:

```sh
docker build -t tutorial .
```

and then once that's finished building you can run it with

```sh
docker run -it --rm -p 127.0.0.1:8787:8787 -e PASSWORD=rstudio tutorial
```

> this will set the login password to "rstudio", and the default username will also be "rstudio".

After that's running, you should be able to open http://localhost:8787 in your browser and see the Rstudio login screen.
