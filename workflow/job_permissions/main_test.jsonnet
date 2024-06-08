function(param) [
  {
    name: 'pass',
    data_file: 'testdata/pass.yaml',
    result: [],
  },
  {
    name: 'workflow permissions is empty',
    data_file: 'testdata/workflow_empty_permissions.yaml',
    result: null,
  },
  {
    name: 'fail',
    data_file: 'testdata/fail.yaml',
    result: [
      {
        name: 'All jobs should have the field permissions',
        location: {
          job_name: 'build',
        },
      },
    ],
  },
]
