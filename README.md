# Directus Community Helm Charts

This is the Community Helm Charts repository for [Directus](https://directus.io/), the open data platform for headless content management.

## Usage

<!-- To install the Directus Helm charts, you need to add the following repository:

```sh
helm repo add directus https://directus-community.github.io/helm-chart/
``` -->

### Local install

- clone this repository (TBD)
- execute prereqs:
```bash
sudo mkdir -p /var/dockerdata/directus/db /var/dockerdata/directus/redis-master /var/dockerdata/directus/redis-replica
sudo chmod a+w /var/dockerdata/directus/ -R
cd charts/directus
helm dependency update
*NOTE: do we need to add bitnami repo via `helm repo add bitnami https://charts.bitnami.com/bitnami`???*
cd ../../
k apply -f storage
```
- then install with: `./install_directus.sh`

## Documentation

Chart documentation is found in [Directus directory](charts/directus/README.md).

## Extra stuff

Please run the following for storage volumes:

```
sudo mkdir -p /var/dockerdata/directus/db
sudo mkdir -p /var/dockerdata/directus/redis-master
sudo mkdir -p /var/dockerdata/directus/redis-replica
```

Please not the new install will then need to be done after cloning this repo via:
```
helm install -f myvalues.yaml directus ./charts/directus -n directus
```