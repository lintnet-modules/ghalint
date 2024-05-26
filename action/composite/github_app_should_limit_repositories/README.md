# github_app_should_limit_repositories

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/009.md

## Usage

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/action.yml',
        '**/action.yaml',
        '!.github/workflows/action.yml',
        '!.github/workflows/action.yaml',
      ],
      modules: [
        // without config
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/github_app_should_limit_repositories/main.jsonnet@0f350f659c7c64c7398249ea0fc23d1cec45c12a:v0.2.0',

        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint/action/composite/github_app_should_limit_repositories/main.jsonnet@0f350f659c7c64c7398249ea0fc23d1cec45c12a:v0.2.0',
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
