# ghalint

A port of [suzuki-shunsuke/ghalint](https://github.com/suzuki-shunsuke/ghalint) to a lintnet Module.
ghalint is a linter for GitHub Actions.

https://lintnet.github.io/

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
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint@d69d0083dcb2696dd3427c484f36940f717a9285:v0.1.2',
          files: [
            '**/main.jsonnet',
            '!action_ref_should_be_full_length_commit_sha/main.jsonnet',
            {
              path: 'action_ref_should_be_full_length_commit_sha/main.jsonnet',
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
