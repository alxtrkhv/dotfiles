return {{
    'stevearc/oil.nvim',
    config = function()
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
            }
        }
    end
}}
