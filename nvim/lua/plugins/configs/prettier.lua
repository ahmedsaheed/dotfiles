
local prettier = require("prettier")

prettier.setup({
    bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
    filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
    },
     cli_options = { 
        tabWidth = 2,
        semi = false,
        singleQuote = true,
        bracketSpacing = true,
        trailingComma = none,
        printWidth = 120,
        arrowParens = "avoid"
     }
})
