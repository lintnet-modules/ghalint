// A configuration file of lintnet.
// https://lintnet.github.io/
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      lint_files: [
        '**/main.jsonnet',
        '!workflow/action_ref_should_be_full_length_commit_sha/main.jsonnet',
      ],
    },
  ],
}
