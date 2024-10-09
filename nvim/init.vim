source ~/.vimrc

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

lua require('config')
lua require('plugins')

colorscheme everforest

set ignorecase
set guicursor=

set clipboard+=unnamedplus

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
