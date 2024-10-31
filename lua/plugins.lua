-- Sets up lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", 
	  "clone", 
	  "--filter=blob:none", 
	  "--branch=stable", 
	  lazyrepo, 
	  lazypath 
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"rebelot/kanagawa.nvim",
		config = function()
			vim.cmd.colorscheme("kanagawa-dragon")
		end,
	},
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
                auto_install = true,

                hightlight = {
                    enable = true,
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Leader>ss",
                        node_incremental = "<Leader>si",
                        scope_incremental = "<Leader>sc",
                        node_decremental = "<Leader>sd",
                    },
                },
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
})
