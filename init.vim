" ~/.local/share/nvim/plugged
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'navarasu/onedark.nvim'
Plug 'alvan/vim-closetag'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set hidden
set title
set number
set splitbelow
set splitright
set background=dark
set inccommand=split
set encoding=utf-8
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set ruler laststatus=2 showcmd showmode
set updatetime=100

autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

colorscheme onedark

let g:indentLine_char = '│'
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
let g:signify_sign_add = '│'
let g:signify_sign_delete = '│'
let g:signify_sign_change = '│'
hi DiffDelete guifg=#ff5555 guibg=none

let mapleader = " "

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fc <cmd>Telescope colorscheme<cr>
nnoremap <leader>f/ <cmd>Telescope current_buffer_fuzzy_find<cr>

tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

lua << EOF
require('telescope-config')
require('treesitter-config')
require('lualine-config')
EOF

