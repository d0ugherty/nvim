require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
               'branch', 
               { 'diff',
                diff_color = {
                    added = {fg = '#7bce43'},
                    modified = {fg = '#d8a236'},
                    removed = {fg = '#ff5555'},
                    }
                },
                'diagnostics',
            },
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {'progress',
                 {'encoding',
                    color = {bg = theme}
                }, 
                {'fileformat',
                    color = { bg = theme}
                },
                 'filetype'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
