local check = import '../../common/github_app_should_limit_repositories.jsonnet';

function(param) [
  {
    name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit repositories',
    location: {
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
      uses: step.uses,
    },
  }
  for step in std.get(std.get(param.data.value[0], 'runs', {}), 'steps', [])
  if check(step) &&
    std.length(std.filter(
      function(elem)
        param.data.file_path == elem.action_file_path &&
        std.get(step, 'id', '') == elem.step_id,
      std.get(param.config, 'excludes', [])
    )) == 0
]
