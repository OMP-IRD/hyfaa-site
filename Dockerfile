FROM jekyll/jekyll:4.2.0 AS builder

COPY --chown=jekyll:jekyll jekyll /jekyll
RUN cd /jekyll && jekyll build

FROM nginx:latest
LABEL org.opencontainers.image.authors="jean.pommier@pi-geosolutions.fr"
LABEL version="0.1"
LABEL description="Descriptive site for MGB-HYFAA web portal \
  Uses Jekyll as site generator"

COPY --from=builder /jekyll/_site /usr/share/nginx/html/site
