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
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/checkout_persist_credentials_should_be_false/main.jsonnet@12aac7476916a42e9de8646ac75c98274cfe8521:v0.3.2',
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
          path: 'github_archive/github.com/lintnet-modules/ghalint/action/composite/checkout_persist_credentials_should_be_false/main.jsonnet@12aac7476916a42e9de8646ac75c98274cfe8521:v0.3.2',
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
