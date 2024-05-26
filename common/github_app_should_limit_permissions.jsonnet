function(step)
  std.objectHas(step, 'uses') &&
  std.startsWith(step.uses, 'tibdex/github-app-token@') &&
  !std.objectHas(std.get(step, 'with', {}), 'permissions')
