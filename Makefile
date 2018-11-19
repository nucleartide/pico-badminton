start:
	@elm reactor &
	@open http://localhost:8000
.PHONY: start

stop:
	@kill $(shell ps | grep 'elm reactor' | head -n1 | cut -d " " -f1)
.PHONY: stop
