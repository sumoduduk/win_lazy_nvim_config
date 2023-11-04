return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "javascript", "html", 
    "javascript",
    "typescript",
    "tsx",
    "rust",
      },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
        })
    end
 }
