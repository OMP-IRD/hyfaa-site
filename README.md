# hyfaa-site

Small website describing the HYFAA platform.

This is generated using [Jekyll](https://jekyllrb.com/).

For most common operations, you can use the `make` commands, or, if you don't have `make` available, look into the Makefile and directly run the docker commands.

## Develop
To develop the website, without having to install jekyll locally, you can run ` make serve` (supposing you have docker installed). 

## Deploy
To build and deploy the website, the recommended way is to use docker:
* `make docker-build` builds the docker image. The result is an nginx docker image, serving the compiled website.
* `make docker-serve` will run the built website, locally, on port 80. Open http://localhost/site
