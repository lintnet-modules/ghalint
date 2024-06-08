function(param) [
  {
    name: 'pass',
    data_file: 'testdata/pass.yaml',
    param: {
      config: {
        excludes: ['slsa-framework/slsa-github-generator/.github/workflows/generator_generic_slsa3.yml'],
      },
    },
    result: [],
  },
  {
    name: 'fail',
    data_file: 'testdata/fail.yaml',
    result: [
      {
        name: "action's ref should be full length commit SHA",
        location: {
          job: 'build',
          uses: 'actions/checkout@v3',
        },
      },
      {
        name: "action's ref should be full length commit SHA",
        location: {
          job: 'test',
          uses: 'aquaproj/update-checksum-workflow/.github/workflows/update-checksum.yaml@v0.1.3',
        },
      },
    ],
  },
]
