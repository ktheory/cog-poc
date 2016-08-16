# cog-poc
My first cog bundle

See [Cog bundle docs](http://docs.operable.io/docs/building-command-bundles)

## Installation

Get a shell in your cog server docker container:

```sh
docker exec -it $(docker-compose ps -q cog) bash
```

Download the bundle config:

```sh
curl https://raw.githubusercontent.com/ktheory/cog-poc/master/my_bundle.yml > my_bundle.yml
```

Install the bundle:

```sh
cogctl bundle install my_bundle.yml && \
cogctl relay-groups assign default --bundles my_bundle && \
cogctl bundle enable my_bundle
```

## Usage:

```
@cog step1 myservice myenv abc123
```
