.PHONY: help
help:
	@echo "Help: Run make install to copy templates and scripts to your home directory"

.PHONY: copy_templates
copy_templates:
	mkdir -p ${HOME}/.config/boil/templates; \
	cp project_templates/* ${HOME}/.config/boil/templates -r;

.PHONY: copy_scripts
copy_scripts:
	mkdir -p ${HOME}/.local/bin/; \
	cp boil ${HOME}/.local/bin/boil_query \
	cp boil ${HOME}/.local/bin/boil

.PHONY: install
install: copy_scripts copy_templates
