# Honeydipper Essential Config

<img src="https://raw.githubusercontent.com/honeydipper/honeydipper/master/logo/log_medium.png" width="100">

This repo hosts essential configurations (and documentation) for [Honeydipper](https://github.com/honeydipper/honeydipper).

## Synopsis

To load the configurations defined in this repo, put the below in the `init.yaml` in your own control repo.

```yaml
---
repos:
  - repo: git@github.com/honeydipper/honeydipper-config-essentials
```
To load the essentials with datadog-emitter enabled.
```yaml
---
repos:
  - repo: git@github.com/honeydipper/honeydipper-config-essentials
  - repo: git@github.com/honeydipper/honeydipper-config-essentials
    path: datadog
```
To load the essentials with gcloud drivers.
```yaml
---
repos:
  - repo: git@github.com/honeydipper/honeydipper-config-essentials
  - repo: git@github.com/honeydipper/honeydipper-config-essentials
    path: gcloud
```
To load the essentials with gcloud drivers and datadog-emitter.
```yaml
---
repos:
  - repo: git@github.com/honeydipper/honeydipper-config-essentials
  - repo: git@github.com/honeydipper/honeydipper-config-essentials
    path: gcloud
  - repo: git@github.com/honeydipper/honeydipper-config-essentials
    path: datadog
```


## License

Honeydipper is licensed under the [MPLv2 License](./LICENSE).

## Contributing

Thank you for your interest! Please refer to the [Code of Conduct](./CODE_OF_CONDUCT.md) for guidance.
