build:
		@echo "Build TMSU v$(TMSU_VERSION)."
		./dockerfile.sh $(TMSU_VERSION) >> dockerfile.make

clean:
		rm dockerfile.make

.PHONY: build clean
