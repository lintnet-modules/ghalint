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
        links: [
          'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/010.md',
        ],
        location: {
          job: 'build',
          uses: 'tibdex/github-app-token@3beb63f4bd073e61482598c45c71c1019b59b73a',
        },
      },
    ],
  },
]
