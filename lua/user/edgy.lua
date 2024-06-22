local M = {
  "folke/edgy.nvim",
  event = "VeryLazy",
  keys = {
            -- stylua: ignore
            { "<leader>ue", function() require("edgy").select() end, desc = "Edgy Select Window" },
  },
  opts = {
    bottom = {
      -- toggleterm / lazyterm at the bottom with a height of 40% of the screen
      {
        ft = "toggleterm",
        size = { height = 0.2 },
        -- exclude floating windows
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      {
        ft = "help",
        size = { height = 20 },
        -- don't open help files in edgy that we're editing
        filter = function(buf)
          return vim.bo[buf].buftype == "help"
        end,
      },
    },
    left = {
      {
        ft = "nvim-tree",
        open = "NvimTreeToggle",
      },
    },
  },
}

return M
