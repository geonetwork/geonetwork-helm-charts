# Datahub

UI of the web application `datahub`.

`datahub` is an application to provide a default, pure and simple UI for metadata and dataset search.

Inspire by Opendata catalogs (CKAN, Opendatasoft), the Hub will host geo and non-geo dataset. It will provide dataviz tool and focuses the experience on the dataset instead of on the metadata.

## Source Code

* https://github.com/geonetwork/geonetwork-ui/tree/main/apps/datahub

## Requirements

Kubernetes: `>=1.14.0-0`

## Dependencies

None

## Installing the Chart

To install the chart with the release name `searxng`

```console
helm repo add geonetwork https://helm-charts.geonetwork-opensource.org
helm repo update
helm install datahub geonetwork/datahub
```

## Uninstalling the Chart

To uninstall the `datahub` deployment

```console
helm uninstall datahub
```

The command removes all the Kubernetes components associated with the chart **including persistent volumes** and deletes the release.

## Configuration

Read through the [values.yaml](./values.yaml) file. It has several commented out suggested values.

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

```console
helm install datahub \
  --set replicaCount="2" \
    geonetwork/datahub
```

Alternatively, a YAML file that specifies the values for the above parameters can be provided while installing the chart.

```console
helm install datahub geonetwork/datahub -f values.yaml
```

## Datahub configuration

Through the parameter `configuration.git`, you can set a git repository that will be used for configuring datahub.

Both `configuration.config_directory_override` and `configuration.assets_directory_override` are available to specify the directory where datahub should find the configuration.

The default values are `/conf` for the configuration and `/assets` for the assets.

Please refer to the docker documentation for more explanations about this custom configuration: https://github.com/geonetwork/geonetwork-ui/tree/main/apps/datahub#specifying-a-custom-configuration-file

## Values

**Important**: Some values here are not documented because those are obvious parameters that you can find the meaning and the usuability through the Kubernetes configuration: https://kubernetes.io/docs/home/

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image | object | See values.yaml | Set the docker image to use. |
| configuration | object | See values.yaml | [See above](#datahub-configuration) |
| ingress | object | See values.yaml | Configurations for configuring ingress |

## Changelog

### Version 0.4.1

Fixing ingress support

### Version 0.4.0

Initial version
