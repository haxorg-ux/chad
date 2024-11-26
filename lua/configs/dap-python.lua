local path = "~/.local/share/pchad/mason/packages/debugpy/venv/bin/python"
require("dap-python").setup(path)

local map = vim.keymap.set

map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end, { desc = "Run DAP Python test method" })
