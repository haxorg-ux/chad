require("mason-nvim-dap").setup {
  ensure_installed = { "python", "rust-analyzer" },
  automatic_installation = { exclude = {} },
}
