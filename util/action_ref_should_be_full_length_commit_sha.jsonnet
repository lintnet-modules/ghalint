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
  ruleName: "action's ref should be full length commit SHA",
  links: [
    'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/008.md',
  ],
  check: check,
}
