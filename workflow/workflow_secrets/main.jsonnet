local match = std.native('regexp.MatchString');

function(param) [
  {
    name: 'Workflows should not set secrets to environment variables',
    location: {
      env: env.key,
    },
  }
  for env in std.sort(std.objectKeysValues(std.get(param.data.value[0], 'env', {})), function(env) env.key)
  if match('\\${{ *github\\.token *}}', env.value)[0] || match('\\${{ *secrets\\.', env.value)[0]
]
