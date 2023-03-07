# Directus Community Helm Charts

This is the Community Helm Charts repository for [Directus](https://directus.io/), the open data platform for headless content management.

## Usage

### Prereqs

- A local dev kubernetes cluster (tested on microk8s)
- helm tool to install charts
- local k8s node should be on the same machine where you're launghing this, like your WSL env

### Local install

- clone this repository:
```
git clone https://git-codecommit.eu-south-1.amazonaws.com/v1/repos/src-sw00125-homeins-directus-helm-chart
```
- then cd into it and install with: `./install_directus.sh`

The script should do everything for you, my lazy friend, but yet, if you need helm debugging feel free to run:
```
helm install --dry-run --debug -f directus-values.yaml -n directus directus ./charts/directus
```

### Documentation

*Note: not really relevant for RC:*
Chart documentation is found in [Directus directory](charts/directus/README.md).
