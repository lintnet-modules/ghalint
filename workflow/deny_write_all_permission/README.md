# deny_write_all_permission

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/003.md

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/workflow/deny_write_all_permission/main.jsonnet@0d6f9c5dbc856a70fca35511136d4f1c3195c872:v0.3.1',
      ],
    },
  ],
}
```
