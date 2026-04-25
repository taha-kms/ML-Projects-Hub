.PHONY: help init update status foreach clean

help:
	@echo "ML-Projects-Hub — submodule helpers"
	@echo ""
	@echo "  make init                initialize and clone all submodules"
	@echo "  make update              pull latest commit on main for every submodule"
	@echo "  make status              show submodule status"
	@echo "  make foreach CMD='...'   run a shell command inside each submodule"
	@echo "  make clean               deinit all submodules (does not delete .git data)"

init:
	git submodule update --init --recursive

update:
	git submodule update --remote --merge --recursive

status:
	git submodule status --recursive

foreach:
	@if [ -z "$(CMD)" ]; then echo "Usage: make foreach CMD='<command>'"; exit 1; fi
	git submodule foreach --recursive '$(CMD)'

clean:
	git submodule deinit --all -f
