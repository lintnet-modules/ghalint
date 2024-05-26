local match = std.native('regexp.MatchString');
local sort(envs) =
  local _ = std.sort(envs);
  envs;

local check(elem, param) =
  std.objectHas(elem, 'uses') &&
  !std.startsWith(elem.uses, './') &&
  !match('@[a-fA-f0-9]{40}$', elem.uses) &&
  !std.any(std.map(
    function(excludedAction) std.startsWith(elem.uses, excludedAction + '@'),
    std.get(param.config, 'excludes', [])
  ));

function(param) sort([
  {
    name: "action's ref should be full length commit SHA",
    location: {
      job: job.key,
      uses: job.value.uses,
    },
  }
  for job in std.objectKeysValues(param.data.value[0].jobs)
  if check(job.value, param)
] + [
  {
    name: "action's ref should be full length commit SHA",
    location: {
      job: job.key,
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
      uses: step.uses,
    },
  }
  for job in std.objectKeysValues(param.data.value[0].jobs)
  for step in std.get(job.value, 'steps', [])
  if check(step, param)
])
