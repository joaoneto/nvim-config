--
-- extensions
--
vim.g.coc_global_extensions = {
	'coc-tsserver',
	'coc-explorer',
	'coc-json',
	'coc-eslint',
	'coc-prettier',
}

-- function hasNodeModule(module)
--   return vim.fn.isdirectory('./node_modules/' .. module or '') == 1
-- end

-- if hasNodeModule('prettier') then
--   table.insert(vim.g.coc_global_extensions, 'coc-prettier')
-- end

-- if hasNodeModule('eslint') then
--   table.insert(vim.g.coc_global_extensions, 'coc-eslint')
-- end

--
-- custom popup highlight
--
vim.api.nvim_set_hl(0, 'CocCustomPopup', { fg = '#f000ff', bg = '#333333' })
vim.api.nvim_set_hl(0, 'CocCustomPopupBoder', { fg = '#6d6d6d', bold = true })
vim.api.nvim_set_hl(0, 'CocMenuSel', { fg = '#ffcfa1', bg = '#6d6d6d' })
vim.api.nvim_set_hl(0, 'CocSearch', { fg = '#f000ff', bold = true })

--
-- key map
--
map('n', '<C-\\>', ':CocCommand explorer<CR>', { silent = true })
map('i', '<CR>', [[coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR><c-r>=coc#on_enter()<CR>']], { silent = true, expr = true })
map('i', '<c-space>', [[coc#refresh()]], { silent = true, expr = true })
map('n', '<leader>rn', '<Plug>(coc-rename)')
map('n', '[g', '<Plug>(coc-diagnostic-prev)', { silent = true })
map('n', ']g', '<Plug>(coc-diagnostic-next)', { silent = true })
map('n', 'gd', '<Plug>(coc-definition)', { silent = true })
map('n', 'gs', ':call CocAction("jumpDefinition", "vsplit") <CR>', { silent = true })
map('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
map('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
map('n', 'gr', '<Plug>(coc-references)', { silent = true })
map('x', '<leader>f', '<Plug>(coc-format-selected)')
map('n', '<leader>f', '<Plug>(coc-format-selected)')

