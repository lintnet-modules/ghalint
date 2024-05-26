local check = (import '../../common/action_ref_should_be_full_length_commit_sha.jsonnet').check;

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
    name: "action's ref should be full length commit SHA",
    location: {
      job: job.key,
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
      uses: step.uses,
    },
  }
  for job in std.sort(std.objectKeysValues(param.data.value[0].jobs), function(x) x.key)
  for step in std.get(job.value, 'steps', [])
  if check(step, param)
] + [
  // reusable workflow
  {
    name: "action's ref should be full length commit SHA",
    location: {
      job: job.key,
      uses: job.value.uses,
    },
  }
  for job in std.sort(std.objectKeysValues(param.data.value[0].jobs), function(x) x.key)
  if std.objectHas(job.value, 'uses') && check(job.value, param)
]
