.PHONY: help publish clean build test

# Default target
help:
	@echo "Available targets:"
	@echo "  make publish  - Build and publish to local .maven directory in repo"
	@echo "  make build    - Build the shadow JAR"
	@echo "  make test     - Run tests"
	@echo "  make clean    - Clean build artifacts"

# Publish to .maven directory in the repository
publish:
	@echo "Building and publishing to .maven directory..."
	./gradlew clean shadowJar publishShadowPublicationToLocalRepository -Dmaven.repo.local=$$(pwd)/.maven
	@echo "Published to .maven directory"
	@echo "Artifact location: .maven/com/dbschema/mongo-jdbc-driver/1.20/"

# Build the shadow JAR
build:
	@echo "Building shadow JAR..."
	./gradlew shadowJar

# Run tests
test:
	@echo "Running tests..."
	./gradlew test

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	./gradlew clean
	@echo "Removing .maven directory..."
	rm -rf .maven

