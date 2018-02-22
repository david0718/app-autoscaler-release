.PHONY: extension
extension::
	./scripts/update
	./scripts/download-releases.sh
	rm ./src/app-autoscaler/api/npm-shrinkwrap.json || exit 0
	rm ./src/app-autoscaler/servicebroker/npm-shrinkwrap.json || exit 0
	zip -r app-autoscaler-extension.zip config manifests jobs packages scripts src templates extension-manifest.yml LICENSE NOTICE README.md postgres_17.tgz cf-routing-release.tgz
