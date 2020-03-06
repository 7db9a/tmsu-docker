build:
		@echo "BUILD $(VERSION)"
		./dockerfile.sh $(VERSION) >> dockerfile.make

.PHONY: build
