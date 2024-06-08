function(param) [
  {
    name: 'secrets: inherit should not be used',
    links: [
      'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/004.md',
    ],
    location: {
      job_name: job.key,
    },
  }
  for job in std.objectKeysValues(param.data.value[0].jobs)
  if std.get(job.value, 'secrets', '') == 'inherit'
]
