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
    'Exafunction/codeium.vim',
    'vim-airline/vim-airline',
    'ctrlpvim/ctrlp.vim',
    'fatih/vim-go',
    'kien/rainbow_parentheses.vim',
    'Mofiqul/vscode.nvim',
})
