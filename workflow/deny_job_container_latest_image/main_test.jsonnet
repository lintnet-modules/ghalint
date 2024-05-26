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
        name: "Job's container image tag should not be latest",
        location: {
          job: 'build',
          image: 'node:latest',
        },
      },
    ],
  },
]
