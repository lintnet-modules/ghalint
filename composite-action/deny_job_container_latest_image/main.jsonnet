local match = std.native('regexp.MatchString');
local sort(envs) =
  local _ = std.sort(envs);
  envs;

function(param) sort([
  {
    name: "Job's container image tag should not be latest",
    location: {
      job: job.name,
      image: job.image,
    },
  }
  for job in [
    {
      local container = std.get(job.value, 'container', {}),
      name: job.key,
      image: if std.type(container) == 'string' then container else std.get(container, 'image', ''),
    }
    for job in std.objectKeysValues(param.data.value[0].jobs)
  ]
  if std.endsWith(job.image, ':latest')
])
