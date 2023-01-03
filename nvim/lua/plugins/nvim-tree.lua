 local status_ok, nvim_tree = pcall(require, "nvim-tree")
 if not status_ok then
   return
 end

 require("nvim-tree").setup({
   disable_netrw = true,
   hijack_netrw = true,
   update_cwd = true,
   open_on_setup = true,
   open_on_setup_file = true, -- open nvim-tree when you open any file
   view = {
     adaptive_size = false,
     centralize_selection = false,
     width = 32,
     hide_root_folder = false,
     side = "left",
     preserve_window_proportions = false,
     number = false,
     relativenumber = false,
     signcolumn = "yes",
   },
 })


