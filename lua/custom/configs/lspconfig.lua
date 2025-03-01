local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach=on_attach,
  capabilities=capabilities,
  filetypes = {"python"},
  before_init = function (_, config)
    local_default_venv_path = vim.fn.exepath("python3")
    config.settings.python.pythonPath = local_default_venv_path
  end
})
