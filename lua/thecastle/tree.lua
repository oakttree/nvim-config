local tree = require("nvim-tree")
tree.setup {
  disable_netrw = true,
  hijack_netrw = true,

  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },

}

--f for filter
