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
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/github_app_should_limit_permissions/main.jsonnet@12aac7476916a42e9de8646ac75c98274cfe8521:v0.3.2',
      ],
    },
  ],
}
```
