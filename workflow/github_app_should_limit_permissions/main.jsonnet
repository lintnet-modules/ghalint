local check = import '../../util/github_app_should_limit_permissions.jsonnet';

function(param) [
  {
    name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit permissions',
    location: {
      job: job.key,
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
      uses: step.uses,
    },
  }
  for job in std.sort(std.objectKeysValues(param.data.value[0].jobs), function(job) job.key)
  for step in std.get(job.value, 'steps', [])
  if check(step)
]
