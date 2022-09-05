require('user.plugins')
require('user.globals')
require('user.options')
require('user.coc')
require('user.telescope')
require('user.treesitter')
require('user.lualine')

map('n', '<C-q>', ':q<CR>', { silent = true })
map('t', '<Esc>', '<C-\\><C-n>')

