# job_permissions

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/001.md

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/workflow/job_permissions/main.jsonnet@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',
      ],
    },
  ],
}
```
