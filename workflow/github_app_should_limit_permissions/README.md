# github_app_should_limit_permissions

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/010.md

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/github_app_should_limit_permissions/main.jsonnet@b2b06cb862255b4516ee33cd328718186393878d:v0.1.0',
      ],
    },
  ],
}
```
