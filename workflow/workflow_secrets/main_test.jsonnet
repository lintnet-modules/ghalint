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
        name: 'Workflows should not set secrets to environment variables',
        location: {
          env: 'API_KEY',
        },
      },
      {
        name: 'Workflows should not set secrets to environment variables',
        location: {
          env: 'GITHUB_TOKEN',
        },
      },
    ],
  },
]
