# action_ref_should_be_full_length_commit_sha

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/008.md

## Usage

### Example 1.

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        // without config
        'github_archive/github.com/lintnet-modules/ghalint/workflow/action_ref_should_be_full_length_commit_sha/main.jsonnet@12aac7476916a42e9de8646ac75c98274cfe8521:v0.3.2',
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
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint/workflow/action_ref_should_be_full_length_commit_sha/main.jsonnet@12aac7476916a42e9de8646ac75c98274cfe8521:v0.3.2',
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
