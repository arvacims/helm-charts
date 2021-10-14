all: update
.PHONY: all

index:
	helm repo index --url https://arvacims.github.io/helm-charts/ docs
.PHONY: index

add-package:
	@test -n "$(CHART_DIR)" || (echo "required parameter missing: CHART_DIR=path/to/chart" && false)
	helm package --destination "./docs" "$(CHART_DIR)"
	$(MAKE) index
.PHONY: add-package
