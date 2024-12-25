function(param) [
  {
    name: 'pass',
    data_file: 'testdata/pass.yaml',
    param: {
      config: {},
    },
    result: [],
  },
  {
    name: 'exclude',
    data_file: 'testdata/fail.yaml',
    param: {
      config: {
        excludes: [
          {
            action_file_path: 'testdata/fail.yaml',
          },
        ],
      },
    },
    result: [],
  },
  {
    name: 'fail',
    data_file: 'testdata/fail.yaml',
    result: [
      {
        name: "actions/checkout's input persist-credentials should be false",
        location: {
          step_id: 'step1',
        },
      },
      {
        name: "actions/checkout's input persist-credentials should be false",
        location: {
          step_id: 'step2',
        },
      },
      {
        name: "actions/checkout's input persist-credentials should be false",
        location: {
          step_id: 'step4',
        },
      },
      {
        name: "actions/checkout's input persist-credentials should be false",
        location: {
          step_id: 'step5',
        },
      },
    ],
  },
]
