# Directus Community Helm Charts

This is the Community Helm Charts repository for [Directus](https://directus.io/), the open data platform for headless content management.

## Usage

To install the Directus Helm charts, you need to add the following repository:

```sh
helm repo add directus https://directus-community.github.io/helm-chart/
```

## Documentation

Chart documentation is found in [Directus directory](charts/directus/README.md).

## Extra stuff

Please run the following for storage volumes:

```
sudo mkdir -p /var/dockerdata/directus/db
sudo mkdir -p /var/dockerdata/directus/redis-master
sudo mkdir -p /var/dockerdata/directus/redis-replica
```