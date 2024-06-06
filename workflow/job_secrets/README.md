# job_secrets

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/006.md

## Usage

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        // without config
        'github_archive/github.com/lintnet-modules/ghalint/workflow/job_secrets/main.jsonnet@00571db321e413d45be457f39e48cd4237399bb7:v0.3.0',

        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint/workflow/job_secrets/main.jsonnet@00571db321e413d45be457f39e48cd4237399bb7:v0.3.0',
          config: {
            excludes: [
              {
                job_name: 'build',
                workflow_file_path: '.github/workflows/fail.yaml',
              },
            ],
          },
        }
      ],
    },
  ],
}
```

## config's schema

[JSON Schema](main_config_schema.json)
