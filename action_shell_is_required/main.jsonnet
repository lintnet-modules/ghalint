local filterMapWithIndex = (import '../util/array.jsonnet').filterMapWithIndex;

local sort(envs) =
  local _ = std.sort(envs);
  envs;

function(param) sort(
  filterMapWithIndex(
    function(idx, step) std.objectHas(step, 'run') && !std.objectHas(step, 'shell'),
    function(idx, step) {
      name: 'shell is required if run is set',
      location: {
        index: idx,
        [if std.objectHas(step, 'name') then 'step_name']: step.name,
        [if std.objectHas(step, 'id') then 'step_id']: step.id,
      },
    },
    std.get(std.get(param.data.value[0], 'runs', {}), 'steps', [])
  )
)
