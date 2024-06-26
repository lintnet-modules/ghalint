# github_app_should_limit_permissions

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/010.md

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/action.yml',
        '**/action.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/github_app_should_limit_permissions/main.jsonnet@0d6f9c5dbc856a70fca35511136d4f1c3195c872:v0.3.1',
      ],
    },
  ],
}
```
