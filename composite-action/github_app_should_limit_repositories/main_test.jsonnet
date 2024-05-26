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
        name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit repositories',
        location: {
          uses: 'tibdex/github-app-token@3beb63f4bd073e61482598c45c71c1019b59b73a',
          step_id: 'tibdex-token',
        },
      },
      {
        name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit repositories',
        location: {
          uses: 'actions/create-github-app-token@46e4a501e119d39574a54e53a06c9a705efc55c9',
          step_id: 'actions-token',
        },
      },
    ],
  },
  {
    name: 'excludes',
    data_file: 'testdata/fail.yaml',
    param: {
      data: {
        file_path: 'aciton.yaml',
      },
      config: {
        excludes: [
          {
            action_file_path: 'aciton.yaml',
            step_id: 'tibdex-token',
          },
          {
            action_file_path: 'aciton.yaml',
            step_id: 'actions-token',
          },
        ],
      },
    },
    result: [],
  },
]
