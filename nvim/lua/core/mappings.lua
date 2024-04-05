local map = vim.api.nvim_set_keymap

map('i', 'jk', '<Esc>', { noremap = true })

vim.g.mapleader = ','
map('n', '<Leader>w', ':w<CR>', { noremap = true })
map('n', '<Leader>q', ':delmarks! | q<CR>', { noremap = true })

-- Lua tree
map('n', '<Leader>m', ':NvimTreeToggle<CR>', { noremap = true })

-- Telescope
map('n', '<Leader>F', ':Telescope live_grep<CR>', { noremap = true })
map('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true })

-- Hop
map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", {})
map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", {})


-- LSP

map('n', '<Leader>l', ':Lspsaga hover_doc<CR>', { noremap = true })
map('n', '<Leader>ca', ':Lspsaga code_action<CR>', { noremap = true })
map('n', '<Leader>o', ':Lspsaga outline<CR>', { noremap = true })
map('n', '<Leader>l', ':Lspsaga hover_doc<CR>', { noremap = true })
map('n', '<Leader>gd', ':Lspsaga goto_definition<CR>', { noremap = true })
map('n', '<Leader>gr', ':Lspsaga rename<CR>', { noremap = true })
map('n', '<Leader>gh', ':Lspsaga finder<CR>', { noremap = true })

-- coc
local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end

map('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})

--trouble
map('n', '<Leader>r', ':Trouble<CR>', { noremap = true })

