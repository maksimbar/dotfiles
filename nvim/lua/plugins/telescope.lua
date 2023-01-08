local actions = require("telescope.actions")
local fb_actions = require "telescope".extensions.file_browser.actions

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<c-n>"] = actions.close,
        ["<c-a>"] = fb_actions.create,
        ["<c-d>"] = fb_actions.remove,
        ["<c-r>"] = fb_actions.rename,
      },
    },
    file_ignore_patterns = {
      "node_modules/.*",
      ".git/.*",
      ".toc",
      ".fls",
      ".log",
      ".fdb_latexmk",
      ".aux",
      ".synctex.gz",
    },
  },
})

require("telescope").load_extension "file_browser"
