function(param) [
  {
    name: 'pass',
    data_file: 'testdata/pass.yaml',
    result: [],
  },
  {
    name: 'fail',
    data_file: 'testdata/fail.yaml',
    result: [
      {
        name: 'shell is required if run is set',
        location: {
          index: 1,
          step_id: 'echo-2',
        },
      },
    ],
  },
]
