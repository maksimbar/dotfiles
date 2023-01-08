---@diagnostic disable: undefined-global

-- Visual
vim.o.conceallevel = 0 -- Don't hide quotes in markdown
-- vim.o.cmdheight = 2
vim.o.pumheight = 10
vim.o.showmode = false
vim.o.showtabline = 2 -- Always show tabline
vim.o.title = true
vim.opt.termguicolors = true -- Use true colors, required for some plugins
vim.wo.number = true
vim.o.relativenumber = true
vim.wo.signcolumn = "yes"
vim.wo.cursorline = true

-- Behavior
vim.o.hlsearch = false
vim.o.ignorecase = true -- Ignore case when using lowercase in search
vim.o.smartcase = true -- But don't ignore it when using upper case
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.expandtab = true -- Convert tabs to spaces.
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 12 -- Minimum offset in lines to screen borders
vim.o.sidescrolloff = 8
vim.o.mouse = nil

-- Vim specific
vim.o.hidden = true -- Do not save when switching buffers
vim.o.fileencoding = "utf-8"
vim.o.spell = true -- As of v0.8.0 it only checks comments
vim.o.spelllang = "en,lt"
vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.wildmode = "longest,full" -- Display auto-complete in Command Mode
vim.o.updatetime = 300 -- Delay until write to Swap and HoldCommand event
vim.g.do_file_type_lua = 1

-- Allow copying to system clipboard
vim.opt.clipboard = "unnamedplus"

-- Vimtex config
vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_mode = 1
vim.g.tex_conceal = "abdmgs"
vim.g.indentLine_setConceal = 1
-- vim.g.vimtex_compiler_latexmk_engines = { _ = "-lualatex" }

-- backup/swap files
vim.opt.swapfile = false -- have files saved to swap
vim.opt.undofile = true -- file undo history preserved outside current session
