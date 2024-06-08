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
        name: 'read-all permission should not be used',
        location: {
          job_name: 'build',
        },
      },
    ],
  },
]
