# deny_read_all_permission

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/002.md

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/workflow/deny_read_all_permission/main.jsonnet@0f350f659c7c64c7398249ea0fc23d1cec45c12a:v0.2.0',
      ],
    },
  ],
}
```
