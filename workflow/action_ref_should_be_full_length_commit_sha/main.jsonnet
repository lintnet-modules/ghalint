local util = (import '../../util/action_ref_should_be_full_length_commit_sha.jsonnet');

/* workflow
jobs:
  <job name>:
    steps:
      - uses: <action>@<version>
  <job name>:
    uses: <action>@<version>
*/

function(param) [
  // step
  {
    name: util.ruleName,
    links: util.links,
    location: {
      job: job.key,
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
      uses: step.uses,
    },
  }
  for job in std.sort(std.objectKeysValues(param.data.value[0].jobs), function(x) x.key)
  for step in std.get(job.value, 'steps', [])
  if util.check(step, param)
] + [
  // reusable workflow
  {
    name: util.ruleName,
    links: util.links,
    location: {
      job: job.key,
      uses: job.value.uses,
    },
  }
  for job in std.sort(std.objectKeysValues(param.data.value[0].jobs), function(x) x.key)
  if std.objectHas(job.value, 'uses') && util.check(job.value, param)
]
