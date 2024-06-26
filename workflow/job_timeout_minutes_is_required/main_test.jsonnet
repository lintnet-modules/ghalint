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
        name: 'All jobs should have timeout-minutes',
        location: {
          job_name: 'foo',
        },
      },
    ],
  },
]
