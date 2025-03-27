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
        name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit permissions',
        location: {
          job: 'build',
          uses: 'tibdex/github-app-token@3beb63f4bd073e61482598c45c71c1019b59b73a',
        },
      },
      {
        name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit permissions',
        location: {
          job: 'build',
          uses: 'actions/create-github-app-token@d72941d797fd3113feb6b93fd0dec494b13a2547',
        },
      },
    ],
  },
]
