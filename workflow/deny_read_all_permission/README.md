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
        'github_archive/github.com/lintnet-modules/ghalint/workflow/deny_read_all_permission/main.jsonnet@00571db321e413d45be457f39e48cd4237399bb7:v0.3.0',
      ],
    },
  ],
}
```
