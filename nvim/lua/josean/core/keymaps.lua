vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Compile and run C++ code
keymap.set("n", "<leader>r", ":Dispatch g++ % -o %< && ./%<<CR>", { desc = "Compile and run C++ code with Dispatch" })
keymap.set("n", "<leader>q", ":QuickRun<CR>", { desc = "Quick run C++ code with QuickRun" })

-- Debugging keybindings using nvim-dap
keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>", { desc = "Continue debugging" })
keymap.set("n", "<F10>", ":lua require'dap'.step_over()<CR>", { desc = "Step over" })
keymap.set("n", "<F11>", ":lua require'dap'.step_into()<CR>", { desc = "Step into" })
keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>", { desc = "Step out" })
keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle breakpoint" })
keymap.set(
  "n",
  "<leader>B",
  ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Set conditional breakpoint" }
)
keymap.set(
  "n",
  "<leader>lp",
  ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",
  { desc = "Set log point" }
)
keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", { desc = "Open REPL" })
keymap.set("n", "<leader>dl", ":lua require'dap'.run_last()<CR>", { desc = "Run last" })
