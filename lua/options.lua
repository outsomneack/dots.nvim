-- Display relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Synchronizes the system clipboard
-- with Neovim's clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

-- When searching
-- Display matches as you're typing
vim.o.incsearch = true
-- Create a split window and show us all of the changes (like substitution changes) 
-- in real-time with line numbers
vim.opt.inccommand = "split"

-- Ignore case in search (and commands auto-completion)
vim.opt.ignorecase = true

vim.opt.termguicolors = true

-- Expand %% to current working directory on command-line mode
vim.api.nvim_set_keymap('c', '%%', "getcmdtype() == ':' and expand('%:h')..'/' or '%%'", { expr = true, noremap = true })

-- Leader Key
-- Set leader key to <Space>
vim.g.mapleader = " "

-- Python mapping (save file and run it with python3)
vim.api.nvim_set_keymap('n', '<leader>p', ':w<CR>:!python3 %<CR>', { noremap = true, silent = true })

-- Git mapping (save, commit, and push changes)
vim.api.nvim_set_keymap('n', '<leader>g', ':w<CR>:!git add %<CR>:!git commit -m "vim_lkey_commit"<CR>:!git push<CR>', { noremap = true, silent = true })

-- Reload init.lua
vim.api.nvim_set_keymap('n', '<leader>rv', ':source ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })

