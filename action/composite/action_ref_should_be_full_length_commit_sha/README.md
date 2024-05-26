# action_ref_should_be_full_length_commit_sha

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/008.md

## Usage

### Example 1.

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/action.yml',
        '**/action.yaml',
        '!.github/workflows/action.yml',
        '!.github/workflows/action.yaml',
      ],
      modules: [
        // without config
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/action_ref_should_be_full_length_commit_sha/main.jsonnet@0f350f659c7c64c7398249ea0fc23d1cec45c12a:v0.2.0',
      ],
    },
  ],
}
```

### Example 2

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/action.yml',
        '**/action.yaml',
        '!.github/workflows/action.yml',
        '!.github/workflows/action.yaml',
      ],
      modules: [
        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint/action/composite/action_ref_should_be_full_length_commit_sha/main.jsonnet@0f350f659c7c64c7398249ea0fc23d1cec45c12a:v0.2.0',
          config: {
            excludes: [
              'slsa-framework/slsa-github-generator/.github/workflows/generator_generic_slsa3.yml',
            ],
          },
        }
      ],
    },
  ],
}
```

## config's schema

[JSON Schema](main_config_schema.json)
