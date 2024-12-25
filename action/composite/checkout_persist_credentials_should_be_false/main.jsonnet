local valid = (import '../../../util/checkout_persist_credentials_should_be_false.jsonnet').valid;

/* composite action
runs:
  using: composite
  steps:
    - uses: <action>@<version>
*/

function(param)
  if std.any([
    std.get(exclude, 'action_file_path', '') == param.data.file_path
    for exclude in std.get(std.get(param, 'config', {}), 'excludes', [])
  ]) then [] else
  [
    {
      name: "actions/checkout's input persist-credentials should be false",
      location: {
        [if std.objectHas(step, 'name') then 'step_name']: step.name,
        [if std.objectHas(step, 'id') then 'step_id']: step.id,
      },
    }
    for step in std.get(std.get(param.data.value[0], 'runs', {}), 'steps', [])
    if !valid(step, param)
  ]
