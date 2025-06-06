# job_timeout_minutes_is_required

All jobs should set [timeout-minutes](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#jobsjob_idtimeout-minutes).

https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/012.md

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/ghalint/workflow/job_timeout_minutes_is_required/main.jsonnet@c311ef7a7e3acdfb8a65136b7852e0619be84c1d:v0.3.3',
      ],
    },
  ],
}
```

## Examples

:x:

```yaml
jobs:
  foo: # The job doesn't have `timeout-minutes`
    runs-on: ubuntu-latest
    steps:
      - run: echo hello
```

:o:

```yaml
jobs:
  foo:
    runs-on: ubuntu-latest
    timeout-minutes: 30
    steps:
      - run: echo hello
```

## :bulb: Set `timeout-minutes` by `ghatm`

https://github.com/suzuki-shunsuke/ghatm

It's so bothersome to fix a lot of workflow files by hand.
[ghatm](https://github.com/suzuki-shunsuke/ghatm) is a command line tool to fix them automatically.

## Why?

https://exercism.org/docs/building/github/gha-best-practices#h-set-timeouts-for-workflows

> By default, GitHub Actions kills workflows after 6 hours if they have not finished by then. Many workflows don't need nearly as much time to finish, but sometimes unexpected errors occur or a job hangs until the workflow run is killed 6 hours after starting it. Therefore it's recommended to specify a shorter timeout.
> 
> The ideal timeout depends on the individual workflow but 30 minutes is typically more than enough for the workflows used in Exercism repos.
> 
> This has the following advantages:
> 
> PRs won't be pending CI for half the day, issues can be caught early or workflow runs can be restarted.
> The number of overall parallel builds is limited, hanging jobs will not cause issues for other PRs if they are cancelled early.

## Exceptions

1. All steps set `timeout-minutes`

```yaml
jobs:
  foo: # The job is missing `timeout-minutes`, but it's okay because all steps set timeout-minutes
    runs-on: ubuntu-latest
    steps:
      - run: echo hello
        timeout-minutes: 5
      - run: echo bar
        timeout-minutes: 5
```

2. A job uses a reusable workflow

When a reusable workflow is called with `uses`, `timeout-minutes` is not available.

```yaml
jobs:
  foo:
    uses: suzuki-shunsuke/renovate-config-validator-workflow/.github/workflows/validate.yaml@v0.2.3
```
