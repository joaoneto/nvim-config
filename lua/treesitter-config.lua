require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'typescript',
        'javascript',
        'tsx',
    },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

