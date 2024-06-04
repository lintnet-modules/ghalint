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
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/github_app_should_limit_repositories/main.jsonnet@00571db321e413d45be457f39e48cd4237399bb7:v0.3.0',

        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint/action/composite/github_app_should_limit_repositories/main.jsonnet@00571db321e413d45be457f39e48cd4237399bb7:v0.3.0',
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
