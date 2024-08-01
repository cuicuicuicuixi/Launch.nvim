local M = {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "AndreM222/copilot-lualine",
  },
}

function M.config()
  local icons = require "user.icons"
  local diff = {
    "diff",
    colored = false,
    symbols = { added = icons.git.LineAdded, modified = icons.git.LineModified, removed = icons.git.LineRemoved }, -- Changes the symbols used by the diff.
  }

  local diagnostics = {
    "diagnostics",
    sections = { "error", "warn" },
    colored = false, -- Displays diagnostics status in color if set to true.
    always_visible = true, -- Show diagnostics even if there are none.
  }

  local filetype = {
    "filetype",
    colored = false,
    -- function()
    --   local filetype = vim.bo.filetype
    --   local upper_case_filetypes = {
    --     "json",
    --     "jsonc",
    --     "yaml",
    --     "toml",
    --     "css",
    --     "scss",
    --     "html",
    --     "xml",
    --   }
    --
    --   if vim.tbl_contains(upper_case_filetypes, filetype) then
    --     return filetype:upper()
    --   end
    --
    --   return filetype
    -- end,
  }

  local opacity_theme = function()
    local colors = {
      darkgray = "#16161d",
      gray = "#727169",
      innerbg = nil,
      outerbg = "#16161D",
      normal = "#7e9cd8",
      insert = "#98bb6c",
      visual = "#ffa066",
      replace = "#e46876",
      command = "#e6c384",
    }
    return {
      inactive = {
        a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
        b = { fg = colors.gray, bg = colors.outerbg },
        c = { fg = colors.gray, bg = colors.innerbg },
      },
      visual = {
        a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
        b = { fg = colors.gray, bg = colors.outerbg },
        c = { fg = colors.gray, bg = colors.innerbg },
      },
      replace = {
        a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
        b = { fg = colors.gray, bg = colors.outerbg },
        c = { fg = colors.gray, bg = colors.innerbg },
      },
      normal = {
        a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
        b = { fg = colors.gray, bg = colors.outerbg },
        c = { fg = colors.gray, bg = colors.innerbg },
      },
      insert = {
        a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
        b = { fg = colors.gray, bg = colors.outerbg },
        c = { fg = colors.gray, bg = colors.innerbg },
      },
      command = {
        a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
        b = { fg = colors.gray, bg = colors.outerbg },
        c = { fg = colors.gray, bg = colors.innerbg },
      },
    }
  end

  require("lualine").setup {
    options = {
      theme = opacity_theme,
      -- component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" },
      -- component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },

      disabled_filetypes = {
        "alpha",
      },
      ignore_focus = { "Neotree" },
    },
    sections = {
      -- lualine_a = { {"branch", icon =""} },
      -- lualine_b = { diff },
      -- lualine_c = { "diagnostics" },
      -- lualine_x = { copilot },
      -- lualine_y = { "filetype" },
      -- lualine_z = { "progress" },
      -- lualine_a = { "mode" },
      lualine_a = {},
      lualine_b = { { "branch", icon = "" } },
      lualine_c = { diagnostics },
      -- lualine_x = { diff, "filetype" },
      -- lualine_x = { "copilot", "filetype" },
      lualine_x = {
        {
          "fileformat",
          symbols = {
            unix = "", -- e712
            dos = "", -- e70f
            mac = "", -- e711
          },
        },
        filetype,
      },
      lualine_y = { "progress" },
      lualine_z = {},
    },
    -- extensions = { "quickfix", "man", "fugitive", "oil" },
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M
