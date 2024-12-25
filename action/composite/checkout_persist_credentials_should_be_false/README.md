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
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/checkout_persist_credentials_should_be_false/main.jsonnet@0d6f9c5dbc856a70fca35511136d4f1c3195c872:v0.3.1',
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
          path: 'github_archive/github.com/lintnet-modules/ghalint/action/composite/checkout_persist_credentials_should_be_false/main.jsonnet@0d6f9c5dbc856a70fca35511136d4f1c3195c872:v0.3.1',
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
