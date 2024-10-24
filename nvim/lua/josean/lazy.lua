-- Path to lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone lazy.nvim if not already installed
if not vim.loop.fs_stat(lazypath) then
  if vim.fn.executable("git") == 1 then
    local ok, result = pcall(vim.fn.system, {
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
    })
    if not ok then
      vim.api.nvim_err_writeln("Failed to clone lazy.nvim: " .. result)
      return
    end
  else
    vim.api.nvim_err_writeln("Git is not installed. Please install git to proceed.")
    return
  end
end

-- Prepend lazy.nvim to runtime path
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim with plugins
require("lazy").setup({
  { import = "josean.plugins" },
  { import = "josean.plugins.lsp" },
  "github/copilot.vim", -- Copilot
  "neovim/nvim-lspconfig", -- LSP Config
  "mfussenegger/nvim-dap", -- Debug Adapter Protocol
  "rcarriga/nvim-dap-ui", -- DAP UI
  "theHamsta/nvim-dap-virtual-text", -- DAP Virtual Text
  "tpope/vim-dispatch", -- Dispatch for running code
  "thinca/vim-quickrun", -- Quickrun for running code
  "mhartington/formatter.nvim", -- Formatter
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})