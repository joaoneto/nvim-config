require('telescope').load_extension('fzf')

--
-- key map
--
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
map('n', '<leader>fc', '<cmd>Telescope colorscheme<cr>')
map('n', '<leader>f/', '<cmd>Telescope current_buffer_fuzzy_find<cr>')

