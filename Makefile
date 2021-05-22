JEKYLL_VERSION=4.2.0
TAG=0.1
IMAGE=hyfaa-site

all: docker-build docker-push

docker-build:
	docker build -t pigeosolutions/${IMAGE}:${TAG} .

docker-push:
	docker push pigeosolutions/${IMAGE}:${TAG}

docker-serve:
	docker run --rm -it -p 80:80 pigeosolutions/${IMAGE}:${TAG}

serve:
	docker run --rm -it \
  --volume="${PWD}/jekyll:/srv/jekyll" \
  --volume="${PWD}/vendor/bundle:/usr/local/bundle" \
  -p 4000:4000 jekyll/jekyll:${JEKYLL_VERSION} \
  jekyll serve

build:
	docker run --rm -it \
  --volume="${PWD}/jekyll:/srv/jekyll" \
  --volume="${PWD}/vendor/bundle:/usr/local/bundle" \
  -p 4000:4000 jekyll/jekyll:${JEKYLL_VERSION} \
  jekyll build
