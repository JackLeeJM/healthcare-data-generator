.PHONY: generate

# Variables
APP_DIR := app
JAR_FILENAME := synthea-with-dependencies.jar
JAR_FILE_URL := https://github.com/synthetichealth/synthea/releases/download/master-branch-latest/synthea-with-dependencies.jar

# Default value for "-p" in the `generate` command
p ?= 10

setup:
	@echo "Downloading JAR dependencies file..."
	@wget -q --show-progress --progress=bar -O $(APP_DIR)/$(JAR_FILENAME) $(JAR_FILE_URL)
	@mkdir -p data
	@echo "Setup Complete."

build:
	docker build -t healthcare-data-gen:0.1.0 .

generate:
	docker run --rm -v ./data:/app/output healthcare-data-gen:0.1.0 -p $(p)