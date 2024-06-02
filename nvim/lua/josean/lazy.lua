local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "josean.plugins" },
  { import = "josean.plugins.lsp" },
  "github/copilot.vim", -- Copilot
  "neovim/nvim-lspconfig", -- LSP Config
  "mfussenegger/nvim-dap", -- Debug Adapter Protocol
  "rcarriga/nvim-dap-ui", -- DAP UI
  "theHamsta/nvim-dap-virtual-text", -- DAP Virtual Text
  "tpope/vim-dispatch", -- Dispatch for running code -- for compiling and running
  "thinca/vim-quickrun", -- Quickrun for running code
  "mhartington/formatter.nvim",
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
