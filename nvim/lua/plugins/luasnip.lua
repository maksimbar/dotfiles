local ok, ls = pcall(require, "luasnip")
if not ok then
  print("Failed to load LuaSnip")
  return
end

local types = require("luasnip.util.types")

-- Loads in snippets
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })

ls.config.set_config({
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
