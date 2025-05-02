# nf-plugin-template plugin

```bash
nextflow run hello -plugins nf-plugin-template
```

## Building

To build the plugin:
```bash
make assemble
```

## Testing with Nextflow

The plugin can be tested without a local Nextflow installation:

1. Build and install the plugin to your local Nextflow installation: `make install`
2. Run a pipeline with the plugin: `nextflow run ./my-script.nf -plugins nf-plugin-template@0.1.0`

## Publishing

Follow these steps to publish the plugin:

1. In `build.gradle` make sure that

    * `github.repository` matches the repository of the plugin
    * `github.indexUrl` points to your fork of the plugins index repository.

2. Create a file named `$HOME/.gradle/gradle.properties`, where $HOME is your home directory. Add the following properties:

    * `github_username`: The GitHub username granting access to the plugin repository.
    * `github_access_token`: The GitHub access token required to upload and commit changes to the plugin repository.
    * `github_commit_email`: The email address associated with your GitHub account.

3. Use the following command to package and create a release for your plugin on GitHub: `make release`
