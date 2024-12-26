# deny_job_container_latest_image

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/007.md

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/workflow/deny_job_container_latest_image/main.jsonnet@12aac7476916a42e9de8646ac75c98274cfe8521:v0.3.2',
      ],
    },
  ],
}
```
