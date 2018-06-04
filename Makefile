patch: patch-install patch-upgrade-ops-manager

patch-install:
	cat pcf-pipelines/install-pcf/gcp/pipeline.yml | yaml-patch -o ops/replace-git.yml > install/pipeline.yml

patch-upgrade-ops-manager:
	cat pcf-pipelines/upgrade-ops-manager/gcp/pipeline.yml | yaml-patch -o ops/replace-git.yml > upgrade/pipeline.yml
