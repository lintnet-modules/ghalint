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
      ],
    },
  ],
}
