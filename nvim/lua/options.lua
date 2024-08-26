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
vim.opt.termsync = false

vim.opt.updatetime = 1000

vim.wo.wrap = false

vim.g.ctrlp_open_new_file = 'v'


-- Remove trailing spaces
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = {"*"},
    callback = function(ev)
        save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", save_cursor)
    end,
})


local function nvim_tree_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', 's', api.node.open.vertical, opts("Open: Vertical Split"))
    vim.keymap.set('n', 'h', api.node.open.horizontal, opts("Open: Horizontal Split"))
end

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  filters = {
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
    custom = {
        '__pycache__',
        ".git",
        '*.pyc',
    },
  },
  on_attach = nvim_tree_attach,
})

require('nvim-treesitter.configs').setup({
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    disable = { "c", "ruby", "python"},  -- optional, list of language that will be disabled
    -- [options]
  },
})
