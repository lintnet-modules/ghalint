function(param)
  if std.objectHas(param.data.value[0], 'permissions') &&
     param.data.value[0].permissions == {} then null else [
    {
      name: 'All jobs should have the field permissions',
      location: {
        job_name: job.key,
      },
    }
    for job in std.objectKeysValues(param.data.value[0].jobs)
    if !std.objectHas(job.value, 'permissions')
  ]
