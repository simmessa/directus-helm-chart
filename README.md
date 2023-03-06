# Directus Community Helm Charts

This is the Community Helm Charts repository for [Directus](https://directus.io/), the open data platform for headless content management.

## Usage

<!-- To install the Directus Helm charts, you need to add the following repository:

```sh
helm repo add directus https://directus-community.github.io/helm-chart/
``` -->

### Local install

- clone this repository (TBD)
- then install with: `./install_directus.sh`

The script should do everything for you, my lazy friend, but yet, if you need helm debugging feel free to run:
`helm install --dry-run --debug -f directus-values.yaml -n directus directus ./charts/directus`

### Documentation

Chart documentation is found in [Directus directory](charts/directus/README.md).
