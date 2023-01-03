-- require("bufferline")

require("bufferline").setup({
  options = {
    always_show_bufferline = true,
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    separator_style = "thin",
    -- Don't show bufferline over vertical, unmodifiable buffers
    offsets = { {
      filetype = "NvimTree",
      highlight = "Directory",
    } },
  },
  -- Don't use italic on current buffer
  highlights = {
    fill = {
      fg = "#374247",
      bg = "#333C43",
    },
    background = {
      fg = "#657b83",
      bg = "#2F383E",
    },
    separator = {
      fg = "#333C43",
      bg = "#333C43",
    },
    buffer_selected = { bold = true },
  },
})
