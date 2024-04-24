return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },

  config = function ()
    require("neo-tree").setup({
      close_if_last_window = true,
      enable_diagnostics = false,
      default_component_configs = {
        git_status = {
          symbols = {
            added = " ",
            modified = " ",
            deleted = " ",
            renamed = " ",
            untracked = " ",
            ignored = " ",
            unstaged = " ",
            staged = " ",
            conflict = " ",
          }
        }
      },
      window = {
        width = 45,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
        mappings = {
          ["<cr>"] = "open",
          ["<esc>"] = "close_window",
          ["<tab>"] = "open",
          ["P"] = {
            "toggle_preview",
            config = { use_float = true, use_image_nvim = true }
          },
          ["t"] = "open_tabnew",
          ["Z"] = "close_all_nodes",
          ["a"] = {
            "add",
            config = { show_path =  "relative" }
          },
          ["A"] = "add_directory",
          ["d"] = "delete",
          ["r"] = "rename",
          ["y"] = "copy_to_clipboard",
          ["x"] = "cut_to_clipboard",
          ["p"] = "paste_from_clipboard",
          ["q"] = "close_window",

          ["R"] = "refresh",
          ["o"] = {
            "show_help",
            nowait = true,
            config = { title = "Order by", prefix_key = "o" },
          },
          ["<"] = "prev_source",
          [">"] = "next_source",
          ["u"] = "show_file_details",
          ["h"] = "toggle_hidden",
          ["i"] = "",
          ["k"] = "",
          ["l"] = "",
          ["j"] = "",
        }
      },
      filesystem = {

      }
    })
  end
}
