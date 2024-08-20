local M = {
  "lewis6991/gitsigns.nvim",
  event = "BufEnter",
  cmd = "Gitsigns",
}

M.config = function()
  local icons = require "user.icons"

  local wk = require "which-key"

  wk.add {
    {
      "<leader>gj",
      "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>",
      desc = "Next Hunk",
    },
    {
      "<leader>gk",
      "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>",
      desc = "Prev Hunk",
    },
    {
      "<leader>gp",
      "<cmd>lua require 'gitsigns'.preview_hunk()<cr>",
      desc = "Preview Hunk",
    },
    {
      "<leader>gr",
      "<cmd>lua require 'gitsigns'.reset_hunk()<cr>",
      desc = "Reset Hunk",
    },
    {
      "<leader>gl",
      "<cmd>lua require 'gitsigns'.blame_line()<cr>",
      desc = "Blame",
    },
    {
      "<leader>gR",
      "<cmd>lua require 'gitsigns'.reset_buffer()<cr>",
      desc = "Reset Buffer",
    },
    {
      "<leader>gs",
      "<cmd>lua require 'gitsigns'.stage_hunk()<cr>",
      desc = "Stage Hunk",
    },
    {
      "<leader>gu",
      "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
      desc = "Undo Stage Hunk",
    },
    {
      "<leader>gd",
      "<cmd>Gitsigns diffthis HEAD<cr>",
      desc = "Git Diff",
    },
  }

  require("gitsigns").setup {
    signs = {
      add = {
        -- hl = "GitSignsAdd",
        text = icons.ui.BoldLineMiddle,
        -- numhl = "GitSignsAddNr",
        -- linehl = "GitSignsAddLn",
      },
      change = {
        -- hl = "GitSignsChange",
        text = icons.ui.BoldLineDashedMiddle,
        -- numhl = "GitSignsChangeNr",
        -- linehl = "GitSignsChangeLn",
      },
      delete = {
        -- hl = "GitSignsDelete",
        text = icons.ui.TriangleShortArrowRight,
        -- numhl = "GitSignsDeleteNr",
        -- linehl = "GitSignsDeleteLn",
      },
      topdelete = {
        -- hl = "GitSignsDelete",
        text = icons.ui.TriangleShortArrowRight,
        -- numhl = "GitSignsTopDeleteNr",
        -- linehl = "GitSignsDeleteLn",
      },
      changedelete = {
        -- hl = "GitSignsChange",
        text = icons.ui.BoldLineMiddle,
        -- numhl = "GitSignsChangeNr",
        -- linehl = "GitSignsChangeLn",
      },
    },
    signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
    numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir = {
      follow_files = true,
    },
    auto_attach = true,
    attach_to_untracked = false,
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
      virt_text_priority = 100,
    },
    current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    max_file_length = 40000, -- Disable if file is longer than this (in lines)
    preview_config = {
      -- Options passed to nvim_open_win
      border = "single",
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 1,
    },
  }
end

return M
