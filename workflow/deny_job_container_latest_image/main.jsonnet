function(param) [
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
    for job in std.sort(std.objectKeysValues(param.data.value[0].jobs), function(job) job.key)
  ]
  if std.endsWith(job.image, ':latest')
]
