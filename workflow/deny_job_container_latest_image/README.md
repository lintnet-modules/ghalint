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
        'github_archive/github.com/lintnet-modules/ghalint/workflow/deny_job_container_latest_image/main.jsonnet@00571db321e413d45be457f39e48cd4237399bb7:v0.3.0',
      ],
    },
  ],
}
```
