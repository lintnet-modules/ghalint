function(param) [
  {
    name: 'write-all permission should not be used',
    links: [
      'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/003.md',
    ],
    location: {
      job_name: job.key,
    },
  }
  for job in std.objectKeysValues(param.data.value[0].jobs)
  if std.objectHas(job.value, 'permissions') && job.value.permissions == 'write-all'
]
