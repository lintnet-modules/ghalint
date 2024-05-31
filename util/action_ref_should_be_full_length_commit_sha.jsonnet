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

local check(elem, param) =
  std.objectHas(elem, 'uses') &&
  !std.startsWith(elem.uses, './') &&
  !match('@[a-fA-f0-9]{40}$', elem.uses)[0] &&
  !std.any(std.map(
    function(excludedAction) std.startsWith(elem.uses, excludedAction + '@'),
    std.get(param.config, 'excludes', [])
  ));

{
  check: check,
}
