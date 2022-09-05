vim.g.move_key_modifier = 'C'
vim.g.indentLine_char = '│'
vim.g.mapleader = ' '

vim.cmd 'colorscheme onedark'

function _G.map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

