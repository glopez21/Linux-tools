vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set smarttab")     -- Better tabs
vim.cmd("set autoindent")   -- Enable autoindent
vim.cmd("set laststatus=2") -- Always show status line
vim.cmd("set ruler")        -- Show cursor position
vim.cmd("set autoread")     -- Reload files on change
vim.cmd("set cursorline")   -- Highlight current line
vim.cmd("syntax enable")    -- Turn on syntax highlighting
vim.cmd("set showmatch")    -- Show matching brackets


vim.g.mapleader = " "       -- This maps the master key to the spacebar