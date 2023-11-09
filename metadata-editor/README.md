# Metadata-editor

UI of the web application `metadata-editor`.

`metadata-editor` is an UI application containing a dashboard for seeing metadata records, and a powerful form-based editor.


## Source Code

* https://github.com/geonetwork/geonetwork-ui/tree/main/apps/metadata-editor

## Requirements

Kubernetes: `>=1.14.0-0`

## Dependencies

None

## Installing the Chart

To install the chart with the release name `metadata-editor`

```console
helm repo add geonetwork https://helm-charts.geonetwork-opensource.org
helm repo update
helm install metadata-editor geonetwork/metadata-editor
```

## Uninstalling the Chart

To uninstall the `metadata-editor` deployment

```console
helm uninstall metadata-editor
```

The command removes all the Kubernetes components associated with the chart **including persistent volumes** and deletes the release.

## Configuration

Read through the [values.yaml](./values.yaml) file. It has several commented out suggested values.

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

```console
helm install metadata-editor \
  --set replicaCount="2" \
    geonetwork/metadata-editor
```

Alternatively, a YAML file that specifies the values for the above parameters can be provided while installing the chart.

```console
helm install metadata-editor geonetwork/metadata-editor -f values.yaml
```

## Metadata-editor configuration

Through the parameter `configuration.git`, you can set a git repository that will be used for configuring metadata-editor.

Both `configuration.config_directory_override` and `configuration.assets_directory_override` are available to specify the directory where metadata-editor should find the configuration.

The default values are `/conf` for the configuration and `/assets` for the assets.

Please refer to the docker documentation for more explanations about this custom configuration: https://github.com/geonetwork/geonetwork-ui/tree/main/apps/metadata-editor#specifying-a-custom-configuration-file

## Values

**Important**: Some values here are not documented because those are obvious parameters that you can find the meaning and the usuability through the Kubernetes configuration: https://kubernetes.io/docs/home/

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image | object | See values.yaml | Set the docker image to use. |
| configuration | object | See values.yaml | [See above](#metadata-editor-configuration) |
| ingress | object | See values.yaml | Configurations for configuring ingress |

## Changelog

### Version 0.1.0

Initial version
