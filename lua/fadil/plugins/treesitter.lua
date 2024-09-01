
return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- Import and configure nvim-treesitter
    local treesitter = require("nvim-treesitter.configs")
    
    treesitter.setup({
      -- Enable syntax highlighting
      highlight = { enable = true },
      
      -- Enable indentation
      indent = { enable = true },
      
      -- Ensure these language parsers are installed
      ensure_installed = {
        "json", "javascript", "typescript", "tsx", "yaml", "html", "css", "vue",
        "markdown", "markdown_inline", "sql", "graphql", "bash", "lua", "vim",
        "dockerfile", "gitignore", "query", "vimdoc", "c",
      },

      -- Enable incremental selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })

    -- Set up nvim-ts-autotag
    require('nvim-ts-autotag').setup({
      -- Additional configuration if needed
    })
  end,
}
