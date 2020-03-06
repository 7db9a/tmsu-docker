all: clean build

build:
		@echo "Build TMSU v$(TMSU_VERSION)."
		chmod +x dockerfile.sh
		./dockerfile.sh $(TMSU_VERSION) >> Dockerfile
		docker build -t tmsu:$(TMSU_VERSION)-buster .

clean:
		rm Dockerfile 2>/dev/null || true

.PHONY: build clean all
