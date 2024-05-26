local match = std.native('regexp.MatchString');
local sort(envs) =
  local _ = std.sort(envs);
  envs;

function(param) [
  {
    name: 'Workflows should not set secrets to environment variables',
    location: {
      env: env.key,
    },
  }
  for env in sort(std.objectKeysValues(std.get(param.data.value[0], 'env', {})))
  if match('\\${{ *github\\.token *}}', env.value) || match('\\${{ *secrets\\.', env.value)
]
