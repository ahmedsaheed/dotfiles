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
}

local colors_modules = {
    "colors"
}

load_modules(core_modules)
load_modules(plugins_modules)
load_modules(colors_modules)


-- disable swap file
vim.o.swapfile = false
