local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
    colors = {
      normal_bg = '#002b36'
    }
  }
})



local opts = { noremap = true, silent = true }
vim.keymap.set({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("n","gd", "<cmd>Lspsaga goto_definition<CR>", opts)
vim.keymap.set("n","o", "<cmd>Lspsaga outline<CR>", opts)
vim.keymap.set('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'l', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
