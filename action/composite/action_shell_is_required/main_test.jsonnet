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
        links: [
          'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/011.md',
        ],
        location: {
          index: 1,
          step_id: 'echo-2',
        },
      },
    ],
  },
]
