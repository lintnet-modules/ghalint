local match = std.native('regexp.MatchString');

function(param)
  std.sort([
    {
      name: 'Job should not set secrets to environment variables',
      location: {
        job: job.key,
        env: env.key,
      },
    }
    for job in std.objectKeysValues(param.data.value[0].jobs)
    if std.length(std.filter(
          function(elem)
            elem.workflow_file_path == param.data.file_path &&
            elem.job_name == job.key,
          std.get(param.config, 'excludes', [])
        )) == 0
    for env in std.objectKeysValues(std.get(job.value, 'env', {}))
    if match('\\${{ *github\\.token *}}', env.value)[0] || match('\\${{ *secrets\\.', env.value)[0]
  ], function(x) x.location.job + '/' + x.location.env)
