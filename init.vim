:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set spell spelllang=en_us
syntax on

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes.git' " Status bar theme
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'voldikss/vim-floaterm' " Ternimal
Plug 'flazz/vim-colorschemes' "Color Schema
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } "Markdown Preview

set encoding=UTF-8

call plug#end()

colorscheme gruvbox

" ==== Key Bindings ===

inoremap jk <ESC>
vnoremap < <gv
vnoremap > >gv

"switch between buffers
map gm :bn<cr>
map gn :bp<cr>
map gd :bp\|bd #<cr>

" NerdTree
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap tt :NERDTreeToggle<CR>
nnoremap <C-n> <C-w><C-w>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Vim airline theme
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'

" Floating Terminal
let g:floaterm_keymap_toggle = '<C-\>'
let g:floaterm_height = 0.8
let g:floaterm_width = 0.8

" Markdown Preview
nmap <C-p> <Plug>MarkdownPreviewToggle
