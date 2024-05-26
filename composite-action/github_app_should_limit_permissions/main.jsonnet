local check = import '../../common/github_app_should_limit_permissions.jsonnet';

function(param) [
  {
    name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit permissions',
    location: {
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
      uses: step.uses,
    },
  }
  for step in std.get(std.get(param.data.value[0], 'runs', {}), 'steps', [])
  if check(step)
]
