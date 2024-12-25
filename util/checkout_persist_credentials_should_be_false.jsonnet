local match = std.native('regexp.MatchString');

/* workflow
jobs:
  <job name>:
    steps:
      - uses: <action>@<version>
*/

/* composite action
runs:
  using: composite
  steps:
    - uses: <action>@<version>
*/

local valid(step, param) =
  !std.objectHas(step, 'uses') ||
  !std.startsWith(step.uses, 'actions/checkout@') ||
  std.contains(['false', false], std.get(std.get(step, 'with', {}), 'persist-credentials', true));

{
  valid: valid,
}
