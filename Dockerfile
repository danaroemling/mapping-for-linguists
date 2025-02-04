FROM rocker/tidyverse:4.4.2

# Install system dependencies required for the 'sf' package
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libudunits2-dev \
    libgdal-dev \
    libproj-dev \
    libgeos-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN install2.r --deps TRUE \
  lingtypology \
  sf \
  rnaturalearth \
  mapproj \
  maps \
  classInt

# for some reason this doesn't install properly via install2.r
RUN Rscript -e 'install.packages("rnaturalearthhires", repos = "https://ropensci.r-universe.dev", type = "source")'
