# github_app_should_limit_repositories

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/009.md

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
        'github_archive/github.com/lintnet-modules/ghalint/workflow/github_app_should_limit_repositories/main.jsonnet@12aac7476916a42e9de8646ac75c98274cfe8521:v0.3.2',

        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint/workflow/github_app_should_limit_repositories/main.jsonnet@12aac7476916a42e9de8646ac75c98274cfe8521:v0.3.2',
          config: {
            excludes: [
              {
                job_name: 'build',
                workflow_file_path: '.github/workflows/fail.yaml',
                step_id: 'generate_token',
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
