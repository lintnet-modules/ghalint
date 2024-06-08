local check = (import '../../../util/action_ref_should_be_full_length_commit_sha.jsonnet').check;

/* composite action
runs:
  using: composite
  steps:
    - uses: <action>@<version>
*/

function(param) std.sort([
  {
    name: "action's ref should be full length commit SHA",
    links: [
      'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/008.md',
    ],
    location: {
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
      uses: step.uses,
    },
  }
  for step in std.get(std.get(param.data.value[0], 'runs', {}), 'steps', [])
  if check(step, param)
])
