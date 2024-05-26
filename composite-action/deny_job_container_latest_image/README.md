# deny_job_container_latest_image

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/007.md

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
        '**/action.yml',
        '**/action.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/deny_job_container_latest_image/main.jsonnet@b2b06cb862255b4516ee33cd328718186393878d:v0.1.0',
      ],
    },
  ],
}
```
