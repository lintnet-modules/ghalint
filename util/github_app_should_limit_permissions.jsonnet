function(step)
  (
    std.objectHas(step, 'uses') &&
    std.startsWith(step.uses, 'tibdex/github-app-token@') &&
    !std.objectHas(std.get(step, 'with', {}), 'permissions')
  ) || (
    std.objectHas(step, 'uses') &&
    std.startsWith(step.uses, 'actions/create-github-app-token@') &&
    std.length(std.filter(function(key) std.startsWith(key, 'permission-'), std.objectFields(std.get(step, 'with', {})))) == 0
  )
