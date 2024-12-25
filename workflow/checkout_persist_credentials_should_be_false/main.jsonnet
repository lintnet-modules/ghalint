local valid = (import '../../util/checkout_persist_credentials_should_be_false.jsonnet').valid;

/* workflow
jobs:
  <job name>:
    steps:
      - uses: <action>@<version>
  <job name>:
    uses: <action>@<version>
*/


function(param)
  local excludedJobs = [
    exclude.job_name
    for exclude in std.get(std.get(param, 'config', {}), 'excludes', [])
    if std.get(exclude, 'workflow_file_path', '') == param.data.file_path && std.objectHas(exclude, 'job_name')
  ];
[
  {
    name: "actions/checkout's input persist-credentials should be false",
    location: {
      job: job.key,
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
    },
  }
  for job in std.sort(std.objectKeysValues(param.data.value[0].jobs), function(x) x.key)
  if !std.contains(excludedJobs, job.key)
  for step in std.get(job.value, 'steps', [])
  if !valid(step, param)
]
