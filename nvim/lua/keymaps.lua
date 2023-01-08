---@diagnostic disable: undefined-global

local map = vim.keymap.set

map("n", "<leader>q", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")

-- Disable arrow keys
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<left>", "<nop>")
map("", "<right>", "<nop>")

-- Telescope
map("n", "<leader>ff", "<Cmd>Telescope find_files<CR>")
map("n", "<leader>fhf", "<Cmd>Telescope find_files hidden=true<CR>")
map("n", "<leader>fb", "<Cmd>Telescope buffers<CR>")
map("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>")

-- Luasnip
local ls = require("luasnip")

map({ "i", "s" }, "<c-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

map({ "i", "s" }, "<c-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

map("i", "<C-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })

-- Telescope file explorer
map("n", "<C-n>", ":Telescope file_browser<CR>") -- open/close

-- Bufferline
map("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
map("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})

-- Split window
map('n', 'ss', ':split<Return><C-w>w')
map('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
map('n', '<Space>', '<C-w>w')
map('', 'sh', '<C-w>h')
map('', 'sk', '<C-w>k')
map('', 'sj', '<C-w>j')
map('', 'sl', '<C-w>l')
