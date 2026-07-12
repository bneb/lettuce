SALTC ?= saltc

build:
	$(SALTC) --pkg . lettuce/server.salt --lib -o /tmp/lettuce.mlir

test:
	bash tests/test_verified_http.sh

clean:
	rm -f /tmp/lettuce.mlir *.mlir

.PHONY: build test clean
