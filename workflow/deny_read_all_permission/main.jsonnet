function(param) [
  {
    name: 'read-all permission should not be used',
    links: [
      'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/002.md',
    ],
    location: {
      job_name: job.key,
    },
  }
  for job in std.objectKeysValues(param.data.value[0].jobs)
  if std.objectHas(job.value, 'permissions') && job.value.permissions == 'read-all'
]
