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
        'github_archive/github.com/lintnet-modules/ghalint/action/composite/action_shell_is_required/main.jsonnet@00571db321e413d45be457f39e48cd4237399bb7:v0.3.0',
      ],
    },
  ],
}
```
