-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  integrations = { "dap" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  tabufline = {
    lazyload = false,
  },
  statusline = {
    -- theme = "vscode_colored",

    -- separator_style = "round",

    order = {
      "mode",
      "git",
      "file",
      "%=", -- Separator
      "lsp_msg", -- LSP status message
      "%=", -- Separator
      "diagnostics", -- LSP client info
      -- "encoding", -- Custom module
      -- "cwd", -- Current working directory
      "cursor", -- Another custom module
    },

    modules = {
      encoding = function()
        local encoding = vim.bo.fileencoding ~= "" and vim.bo.fileencoding or "no encode"
        return "%#st_mode#" .. encoding .. " "
      end,
    },
  },
}

return M
