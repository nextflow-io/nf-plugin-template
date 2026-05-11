GRADLE := $(shell command -v gradle 2>/dev/null || echo ./gradlew)

# Build the plugin
assemble:
	$(GRADLE) assemble

clean:
	rm -rf .nextflow*
	rm -rf work
	rm -rf build
	$(GRADLE) clean

# Run plugin unit tests
test:
	$(GRADLE) test

# Install the plugin into local nextflow plugins dir
install:
	$(GRADLE) install

# Publish the plugin
release:
	$(GRADLE) releasePlugin
