return {{
  'stevearc/oil.nvim',
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "oil",
      callback = function()
        vim.keymap.set("n", "s", "s", { buffer = true })
      end,
    })

    require('oil').setup {
      view_options = {
        is_hidden_file = function(name, _)
          return
            name == '__pycache__' or
            name == '.DS_Store' or
            name == '.pytest_cache' or
            name == '.venv' or
            name == '.git' or
            name == '.fleet' or
            name == '.vscode' or
            name == '.idea'
        end
      },
        keymaps = {
          ["<C-h>"] = false,
          ["<C-l>"] = false,
        },
    }
  end
}}
