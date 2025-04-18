local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'neovim/nvim-lspconfig',
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    'vim-airline/vim-airline',
    'ctrlpvim/ctrlp.vim',
    'fatih/vim-go',
    'kien/rainbow_parentheses.vim',
    'Mofiqul/vscode.nvim',
    'nvim-treesitter/nvim-treesitter',
    'hrsh7th/vim-vsnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'luckasRanarison/tailwind-tools.nvim',
    'andymass/vim-matchup',
})
