local builtin = require('telescope.builtin')
vim.keymap.set('n', 'f', builtin.find_files, {})
vim.keymap.set('n', 'g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})


local actions = require 'telescope.actions'
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<S-d>"] = actions.cycle_history_next,
        ["<S-a>"] = actions.cycle_history_prev,

        ["<S-s>"] = actions.move_selection_next,
        ["<S-w>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-,>"] = actions.select_horizontal,
        ["<C-.>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,


      }
    }
  },
 pickers = {

 },
  extensions = {

  }
}
