.PHONY: extension
extension::
	./scripts/update
	./scripts/download-releases.sh
	rm ./src/app-autoscaler/api/npm-shrinkwrap.json
	rm ./src/app-autoscaler/servicebroker/npm-shrinkwrap.json
	zip -r app-autoscaler-extension.zip config manifests jobs packages scripts src templates extension-manifest.yml LICENSE NOTICE README.md
