# ghalint

A port of [suzuki-shunsuke/ghalint](https://github.com/suzuki-shunsuke/ghalint) to a lintnet Module.
ghalint is a linter for GitHub Actions.

https://lintnet.github.io/

## Usage

### Example 1. Use a lint rule

[deny_inherit_secrets](deny_inherit_secrets)

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/workflow/deny_inherit_secrets/main.jsonnet@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',
      ],
    },
  ],
}
```

### Example 2. Use all lint rules with default settings

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/workflow/**/main.jsonnet@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',
      ],
    },
    {
      data_files: [
        '**/action.yml',
        '**/action.yaml',
        '!.github/workflows/action.yml',
        '!.github/workflows/action.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/action/**/main.jsonnet@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',
      ],
    },
  ],
}
```

### Example 3. Customize settings

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',
          files: [
            'workflow/**/main.jsonnet',
            '!workflow/action_ref_should_be_full_length_commit_sha/main.jsonnet',
            {
              path: 'workflow/action_ref_should_be_full_length_commit_sha/main.jsonnet',
              config: {
                excludes: [
                  'slsa-framework/slsa-github-generator/.github/workflows/generator_generic_slsa3.yml',
                ],
              },
            },
          ],
        },
      ],
    },
  ],
}
```

## LICENSE

[MIT](LICENSE)
