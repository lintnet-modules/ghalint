{
  filterMapWithIndex(filterFunc, mapFunc, arr):
    std.filterMap(
      function(elem) elem.included,
      function(elem) mapFunc(elem.index, elem.elem),
      std.mapWithIndex(
        function(idx, elem) {
          index: idx,
          elem: elem,
          included: filterFunc(idx, elem),
        }, arr
      )
    ),
}
