# mapping-for-linguists

In this repository we provide the data and code for the [paper](https://www.cambridge.org/core/journals/journal-of-linguistic-geography/article/visualizing-map-data-for-linguistics-using-ggplot2-a-tutorial-with-examples-from-dialectology-and-typology/369F9643F85781AAAC0096D6BD146215) "Visualizing map data for linguistics using ggplot2: A tutorial with examples from dialectology and typology". 

Citation:
Roemling, D., Winter, B., & Grieve, J. (2025). Visualizing map data for linguistics using ggplot2: A tutorial with examples from dialectology and typology. Journal of Linguistic Geography, 1–15. doi:10.1017/jlg.2024.11




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

![rstudio login screen](https://github.com/danaroemling/mapping-for-linguists/blob/main/rstudio_login_screen.png?raw=true)
