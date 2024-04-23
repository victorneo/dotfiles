-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true
vim.opt.termguicolors = true

vim.g.NERDTreeIgnore = {'*.pyc', '__pycache__', '.git', '.pytest_cache', '.vscode'}
vim.g.NERDTreeShowHidden=1
vim.g.NERDTreeMinimalMenu=1
