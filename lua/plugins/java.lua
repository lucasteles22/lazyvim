return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      settings = {
        java = {
          autobuild = { enabled = true },
          configuration = {
            updateBuildConfiguration = "automatic",
          },
          completion = {
            enabled = true,
            importOrder = {
              "",
              "javax",
              "java",
              "#",
            },
          },
          format = { enabled = true },
          typeHierarchy = { lazyLoad = true },
          compile = {
            nullAnalysis = { mode = "automatic" },
          },
          jdt = {
            ls = {
              lombokSupport = { enabled = true },
            },
          },
          debug = {
            settings = {
              forceBuildBeforeLaunch = false,
            },
          },
        },
      },
    },
  },
}

