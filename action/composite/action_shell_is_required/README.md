# action_shell_is_required

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/011.md

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/action.yml',
        '**/action.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/action_shell_is_required/main.jsonnet@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',
      ],
    },
  ],
}
```
