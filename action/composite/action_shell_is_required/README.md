# action_shell_is_required

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/011.md

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
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/action_shell_is_required/main.jsonnet@0f350f659c7c64c7398249ea0fc23d1cec45c12a:v0.2.0',
      ],
    },
  ],
}
```
