all: update
.PHONY: all

index:
	helm repo index --url https://arvacims.github.io/helm-charts/ docs
.PHONY: update
