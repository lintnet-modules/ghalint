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
        name: 'secrets: inherit should not be used',
        links: [
          'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/004.md',
        ],
        location: {
          job_name: 'build',
        },
      },
    ],
  },
]
