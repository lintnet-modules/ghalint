function(param) [
  {
    name: 'pass',
    data_file: 'pass.yaml',
    result: [],
  },
  {
    name: 'fail',
    data_file: 'fail.yaml',
    result: [
      {
        name: 'secrets: inherit should not be used',
        location: {
          job_name: 'build',
        },
      },
    ],
  },
]
