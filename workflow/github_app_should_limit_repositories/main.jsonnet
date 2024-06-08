local check = import '../../util/github_app_should_limit_repositories.jsonnet';

function(param) [
  {
    name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit repositories',
    links: [
      'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/009.md',
    ],
    location: {
      job: job.key,
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
      uses: step.uses,
    },
  }
  for job in std.sort(std.objectKeysValues(param.data.value[0].jobs), function(job) job.key)
  for step in std.get(job.value, 'steps', [])
  if check(step) &&
    std.length(std.filter(
      function(elem)
        param.data.file_path == elem.workflow_file_path &&
        job.key == elem.job_name &&
        std.get(step, 'id', '') == elem.step_id,
      std.get(param.config, 'excludes', [])
    )) == 0
]
