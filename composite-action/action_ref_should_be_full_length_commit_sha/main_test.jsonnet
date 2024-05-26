function(param) [
  {
    name: 'pass',
    data_file: 'testdata/pass.yaml',
    param: {
      config: {
        excludes: ['actions/cache'],
      },
    },
    result: [],
  },
  {
    name: 'fail',
    data_file: 'testdata/fail.yaml',
    result: [
      {
        name: "action's ref should be full length commit SHA",
        location: {
          uses: 'actions/checkout@v3',
        },
      },
    ],
  },
]
