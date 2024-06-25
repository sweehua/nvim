return {
  { "rebelot/kanagawa.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
  {
    "mg979/vim-visual-multi",
    init = function()
      -- vim.g.VM_default_mappings = 0

      -- doesnt work, need to "activate" visual multi by Ctrl-n first before can use new define key
      vim.g.VM_maps = {}
      vim.g.VM_maps = {
        ['Add Cursor Down'] = '<A-Down>',
        ['Add Cursor Up']   = '<A-Up>'
      }
    end
  },
  {
    "nvim-cmp",
    opts = {
      completion = {
        autocomplete = false,
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        always_show_bufferline = true,
      },
    },
  },
}
