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
        name: "Job's container image tag should not be latest",
        location: {
          job: 'build',
          image: 'node:latest',
        },
      },
    ],
  },
]
