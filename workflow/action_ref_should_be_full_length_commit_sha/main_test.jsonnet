local util = (import '../../util/action_ref_should_be_full_length_commit_sha.jsonnet');

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
        name: util.ruleName,
        links: util.links,
        location: {
          job: 'build',
          uses: 'actions/checkout@v3',
        },
      },
      {
        name: util.ruleName,
        links: util.links,
        location: {
          job: 'test',
          uses: 'aquaproj/update-checksum-workflow/.github/workflows/update-checksum.yaml@v0.1.3',
        },
      },
    ],
  },
]
