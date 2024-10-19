local load_modules = require("utils").load_modules

local core_modules = {
    "core.settings",
    "core.mappings",
    "core.options",
    "core.autocmd",
    "core.globals"
}

local plugins_modules = {
    "plugins",
    "plugins.configs.nvim-tree",
    "plugins.configs.prettier",
    "plugins.configs.toggleterm",
    "plugins.configs.lualine",
    "plugins.configs.alpha",
    "plugins.configs.wilder",
    "plugins.configs.treesitter",
    "plugins.configs.code-runner",
    "plugins.configs.bufferline",
    "plugins.configs.lsp-configs",
    "plugins.configs.mason",
    "plugins.configs.java",
    "plugins.configs.neosolarize",
    "plugins.configs.tokyonight",
    "plugins.configs.lspsaga",
    "plugins.configs.go",
}

local colors_modules = {
    "colors"
}

load_modules(core_modules)
load_modules(plugins_modules)
load_modules(colors_modules)


-- disable swap file
vim.o.swapfile = false


local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimports()
  end,
  group = format_sync_grp,
})


local format_sync_grp_js = vim.api.nvim_create_augroup("PrettierFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.js,*.jsx,*.ts,*.tsx, *.json, *.html, *.css, *.scss, *.md, *.yaml, *.yml",
  callback = function()
   require('prettier').format()
  end,
  group = format_sync_grp_js,
})
