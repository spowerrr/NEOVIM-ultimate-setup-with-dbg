-- Import your core and lazy modules
require("josean.core")
require("josean.lazy")

-- Check if 'termguicolors' is available and set it
if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end
