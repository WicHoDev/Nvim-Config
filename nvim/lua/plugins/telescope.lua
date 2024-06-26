local key = vim.keymap

local config = function()
  local telescope = require("telescope")
  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
        previewer = false,
        hidden = true,
      },
      live_grep = {
        theme = "dropdown",
        previewer = false,
      },
      find_buffers = {
        theme = "dropdown",
        previewer = false,
      }
    },
  })
end


return{
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
  config = config,
  keys = {
    key.set("n", "<leader>fk", ":Telescope keymaps<CR>"),
    key.set("n", "<leader>fh", ":Telescope help_tags<CR>"),
    key.set("n", "<leader>ff", ":Telescope find_files<CR>"),
    key.set("n", "<leader>fg", ":Telescope live_grep<CR>"),
    key.set("n", "<leader>fb", ":Telescope buffers<CR>"),
  },
}
