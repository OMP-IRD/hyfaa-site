# hyfaa-site

Small website describing the HYFAA platform.

This is generated using [Jekyll](https://jekyllrb.com/).

You can use the commands in the Makefile, for instance

## Develop
To develop the website, without having to install jekyll locally, you can run ` make serve` (supposing you have docker installed). Or if you don't have `make`, run the corresponding command (look into the Makefile)

## Deploy
To build and deploy the website, the recommended way it to use docker:
* `make docker-build` builds the docker image. The result is an nginx docker image, serving the compiled website.
* `make docker-serve` will run the built website, locally, on port 80. Open http://localhost/site
