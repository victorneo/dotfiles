-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Better window navigation
vim.keymap.set('n', '<C-Left>', '<C-W><Left>', opts)
vim.keymap.set('n', '<C-Right>', '<C-W><Right>', opts)
vim.keymap.set('n', '<C-Up>', '<C-W><Up>', opts)
vim.keymap.set('n', '<C-Down>', '<C-W><Down>', opts)

vim.keymap.set('n', '<F2>', ':NERDTreeToggle<CR>', opts)

