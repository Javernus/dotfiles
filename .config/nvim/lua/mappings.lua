require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<C-n>", "<cmd>Oil<CR>", { desc = "Open Oil" })

-- map("n", ";", ":", { desc = "CMD enter command mode" })

-- map("n", "<A-Down>", ":res +1 <CR>")
-- map("n", "<A-Up>", ":res -1 <CR>")
-- map("n", "<A-Right>", ":vertical resize-1 <CR>")
-- map("n", "<A-Left>", ":vertical resize+1 <CR>")

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })

map("n", "<leader>fm", function(args)
  require("conform").format { bufnr = args.buf, lsp_format = "fallback" }
  -- require("conform").format { async = true, lsp_fallback = true }
end, { desc = "custom format files" })

map("n", "<leader>i", ":lua vim.diagnostic.open_float(nil, { focus=false })<CR>", { desc = "diagnostic window" })
-- map("n", "<leader>ca", ": lua vim.lsp.buf.code_actions()", { desc = "code actions" })
