function(param)
  [
    {
      name: 'All jobs should have timeout-minutes',
      location: {
        job_name: job.key,
      },
    }
    for job in std.objectKeysValues(param.data.value[0].jobs)
    if !std.objectHas(job.value, 'timeout-minutes') &&
      !std.objectHas(job.value, 'uses') &&
      !std.all(std.map(function(step) std.objectHas(step, 'timeout-minutes'), std.get(job.value, 'steps', [])))
  ]
