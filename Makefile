build:
		@echo "Build TMSU v$(TMSU_VERSION)."
		./dockerfile.sh $(TMSU_VERSION) >> Dockerfile
		docker build -t tmsu:$(TMSU_VERSION)-buster .

clean:
		rm Dockerfile 2>/dev/null || true

all: clean build

.PHONY: build clean
