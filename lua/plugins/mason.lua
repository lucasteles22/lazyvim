return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "java-debug-adapter",
        "java-test",
        "bash-language-server",
        "shellcheck",
        "shfmt",
      },
    },
  },
}
