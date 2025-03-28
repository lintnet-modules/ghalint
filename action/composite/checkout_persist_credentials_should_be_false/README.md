# checkout_persist_credentials_should_be_false 

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/013.md

## Usage

### Example 1.

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
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/checkout_persist_credentials_should_be_false/main.jsonnet@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',
      ],
    },
  ],
}
```

### Example 2

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/action.yml',
        '**/action.yaml',
      ],
      modules: [
        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/ghalint/action/composite/checkout_persist_credentials_should_be_false/main.jsonnet@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',
          config: {
            excludes: [
              {
                action_file_path: 'action.yaml',
              }
            ],
          },
        }
      ],
    },
  ],
}
```
