.DEFAULT_GOAL := setup-all

.PHONY: setup-minimum
setup-minimum:
	@sh scripts/01/main.sh
.PHONY: setup-standard
setup-standard: setup-minimum
	@sh scripts/02/main.sh
.PHONY: setup-all
setup-all: setup-standard
	@sh scripts/03/main.sh
