# Helm charts for the geonetwork organization

## geonetwork-ui branch

### Datahub

Readme: https://github.com/geonetwork/geonetwork-helm-charts/tree/main/datahub

### Metadata-editor

Readme: https://github.com/geonetwork/geonetwork-helm-charts/tree/main/metadata-editor

### gn-tools-pipelines

Readme: https://github.com/geonetwork/geonetwork-helm-charts/tree/main/gn-tools-pipelines

# WARNING: New location storage for the helm chart - How to use

All the helm chart are now stored inside the GitHub Docker registry.

Please use it like so:

## For helmfile.yaml

```
chart: oci://ghcr.io/geonetwork/geonetwork-helm-charts/myhelmchart
version: X.X.X
```

You don't need to include this anymore:
```
repositories:
  - name: geonetwork-helm-charts
    url: https://helm-charts.geonetwork-opensource.org
```

Make sure to migrate to this new way of working.