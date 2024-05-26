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
        'github_archive/github.com/lintnet-modules/ghalint/github_app_should_limit_repositories/main.jsonnet@b2b06cb862255b4516ee33cd328718186393878d:v0.1.0',

        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint/github_app_should_limit_repositories/main.jsonnet@b2b06cb862255b4516ee33cd328718186393878d:v0.1.0',
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
