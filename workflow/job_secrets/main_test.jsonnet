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
        name: 'Job should not set secrets to environment variables',
        links: [
          'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/006.md',
        ],
        location: {
          env: 'API_KEY',
          job: 'build',
        },
      },
      {
        name: 'Job should not set secrets to environment variables',
        links: [
          'https://github.com/suzuki-shunsuke/ghalint/blob/main/docs/policies/006.md',
        ],
        location: {
          env: 'GITHUB_TOKEN',
          job: 'build',
        },
      },
    ],
  },
  {
    name: 'excludes',
    data_file: 'testdata/fail.yaml',
    fake_data_file: '.github/workflows/fail.yaml',
    param: {
      config: {
        excludes: [
          {
            job_name: 'build',
            workflow_file_path: '.github/workflows/fail.yaml',
          },
        ],
      },
    },
    result: [],
  },
]
