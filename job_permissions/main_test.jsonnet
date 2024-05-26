function(param) [
  {
    name: 'pass',
    data_file: 'pass.yaml',
    result: [],
  },
  {
    name: 'workflow permissions is empty',
    data_file: 'workflow_empty_permissions.yaml',
    result: null,
  },
  {
    name: 'fail',
    data_file: 'fail.yaml',
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
