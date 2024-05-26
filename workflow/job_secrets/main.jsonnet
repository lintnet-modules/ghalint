local match = std.native('regexp.MatchString');

function(param)
  // if param.request_type == 'metadata' then
  //   {
  //     name: 'Job should not set secrets to environment variables',
  //     config: {
  //       type: 'object',
  //       additionalProperties: false,
  //       excludes: {
  //         type: 'array',
  //         description: 'Excluded jobs',
  //         items: {
  //           type: 'object',
  //           additionalProperties: false,
  //           description: 'Excluded job',
  //           required: [
  //             'workflow_file_path',
  //             'job_name',
  //           ],
  //           properties: {
  //             workflow_file_path: {
  //               type: 'string',
  //               description: 'Workflow file path',
  //             },
  //             job_name: {
  //               type: 'string',
  //               description: 'Job name',
  //             },
  //           },
  //         },
  //       },
  //     },
  //   }
  // else if param.request_type == 'lint' then
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
    if match('\\${{ *github\\.token *}}', env.value) || match('\\${{ *secrets\\.', env.value)
  ], function(x) x.location.job + '/' + x.location.env)
// else {}
