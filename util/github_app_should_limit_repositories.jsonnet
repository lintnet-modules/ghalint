function(step)
  std.objectHas(step, 'uses') && (
    (
      std.startsWith(step.uses, 'tibdex/github-app-token@') &&
      !std.objectHas(std.get(step, 'with', {}), 'repositories')
    ) || (
      std.startsWith(step.uses, 'actions/create-github-app-token@') &&
      !std.objectHas(std.get(step, 'with', {}), 'repositories') &&
      std.objectHas(std.get(step, 'with', {}), 'owner')
    )
  )
