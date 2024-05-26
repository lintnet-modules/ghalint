# action_ref_should_be_full_length_commit_sha

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/008.md

## Usage

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
        'github_archive/github.com/lintnet/modules/modules/ghalint/action_ref_should_be_full_length_commit_sha/main.jsonnet@60a46a4fa4c0e7b1b95f57c479e756afa2f376e9:v0.1.0',

        // with config
        {
          path: 'github_archive/github.com/lintnet/modules/modules/ghalint/action_ref_should_be_full_length_commit_sha/main.jsonnet@60a46a4fa4c0e7b1b95f57c479e756afa2f376e9:v0.1.0',
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
