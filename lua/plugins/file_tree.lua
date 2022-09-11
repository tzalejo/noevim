-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require'nvim-tree'.setup{
  sort_by = "Alejandro",
  disable_netrw        = false,
  hijack_netrw         = true,
  open_on_setup        = false,
  ignore_buffer_on_setup = false,
  ignore_ft_on_setup   = {},
  auto_reload_on_write = true,
  hijack_cursor        = false,
  update_cwd           = false,
  hijack_unnamed_buffer_when_opening = false,

  open_on_tab          = true,-- al hacer tab sobre el archivo me muestra, abriendolo.

  hijack_directories   = {
    enable    = true,
  },
  diagnostics          = {
    enable   = false,
    icons    = {
      hint    = "",
      info    = "",
      warning = "",
      error   = "",
    },
  },
  update_focused_file  = {
    enable      = true, -- muestra el archivo abierto en el arbol.
    update_cwd  = false,
    ignore_list = {}
  },
  system_open          = {
    cmd  = nil,
    args = {}
  },
  filters              = {
    dotfiles = false,
    custom   = {}
  },
  git                  = {
    enable  = true,
    ignore  = true,
    timeout = 500,
  },
  view                 = {
    width                       = '20%',
    -- height                      = '20%',
    hide_root_folder            = true, -- Para que no muestre la carpeta raiz.
    side                        = 'left',
    preserve_window_proportions = true,
    mappings                    = {
      custom_only = false,
      list        = {}
    },
    number                      = false,
    relativenumber              = false,
    signcolumn                  = "yes"
  },
  trash                 = {
    cmd             = "trash",
    require_confirm = true
  },
  actions               = {
    change_dir  = {
      enable    = true,
      global    = false,
    },
    open_file           = {
      quit_on_open  = false,
      resize_window = false,
      window_picker = {
        enable  = true,
        chars   = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      }
    }
  },
  renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = false,
    full_name = false,
    highlight_opened_files = "none",
    root_folder_modifier = ":~",
    indent_width = 2,
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    }
  }
}
