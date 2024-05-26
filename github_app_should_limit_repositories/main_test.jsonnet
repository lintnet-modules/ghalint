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
        name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit repositories',
        location: {
          job: 'build',
          uses: 'tibdex/github-app-token@3beb63f4bd073e61482598c45c71c1019b59b73a',
          step_id: 'tibdex-token',
        },
      },
      {
        name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit repositories',
        location: {
          job: 'build',
          uses: 'actions/create-github-app-token@46e4a501e119d39574a54e53a06c9a705efc55c9',
          step_id: 'actions-token',
        },
      },
    ],
  },
  {
    name: 'excludes',
    data_file: 'fail.yaml',
    param: {
      data: {
        file_path: '.github/workflows/fail.yaml',
      },
      config: {
        excludes: [
          {
            workflow_file_path: '.github/workflows/fail.yaml',
            job_name: 'build',
            step_id: 'tibdex-token',
          },
          {
            workflow_file_path: '.github/workflows/fail.yaml',
            job_name: 'build',
            step_id: 'actions-token',
          },
        ],
      },
    },
    result: [],
  },
]
