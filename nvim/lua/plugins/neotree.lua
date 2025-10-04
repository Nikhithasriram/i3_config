return {
    "nvim-neo-tree/neo-tree.nvim",
     branch = "v3.x",
     dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    lazy = false,
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex" , "rust" , "cpp" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
      vim.keymap.set('n' , '<leader>n' , ':Neotree toggle left<CR>' , {})
      vim.keymap.set('n' , '<leader>f' , ':Neotree focus<CR>',{})

    end

 } 



