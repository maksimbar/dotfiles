local status, luasnip = pcall(require, "luasnip")
if not status then
  return
end

local types = require("luasnip.util.types")

-- Loads in snippets
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })
require("luasnip.loaders.from_vscode").lazy_load()

luasnip.config.set_config({
  history = true,
  update_events = "InsertLeave",
  region_check_events = "CursorHold,InsertLeave",
  delete_check_events = "TextChanged,InsertEnter",
  enable_autosnippets = true,
  store_selection_keys = "<Tab>",
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "●", "GruvboxOrange" } },
        priority = 0,
      },
    },
  },
})
