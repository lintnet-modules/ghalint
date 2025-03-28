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
      ],
      modules: [
        // without config
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/github_app_should_limit_repositories/main.jsonnet@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',

        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint/action/composite/github_app_should_limit_repositories/main.jsonnet@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',
          config: {
            excludes: [
              {
                action_file_path: 'foo/action.yaml',
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
