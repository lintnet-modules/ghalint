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
        'github_archive/github.com/lintnet-modules/ghalint/workflow/job_secrets/main.jsonnet@0d6f9c5dbc856a70fca35511136d4f1c3195c872:v0.3.1',

        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint/workflow/job_secrets/main.jsonnet@0d6f9c5dbc856a70fca35511136d4f1c3195c872:v0.3.1',
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
