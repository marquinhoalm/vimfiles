 " ##### Fix vim with fish  {{{

if &shell =~# 'fish$'
    set shell=sh
endif

" "}}}

" Plugins
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tpope/vim-fugitive'

call plug#end()

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme gruvbox

" ##### vim-tmuxline.vim {{{
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_preset = {
 \'a'    : '%d %b %Y %H:%M',
 \'b'    : '#W',
 \'win'  : '#I #W',
 \'cwin' : '#I #W',
 \'z'    : '#h'}
" }}}

" ##### Airline  {{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'
let g:airline_section_warning = ''
let g:airline_inactive_collapse = 0
"let g:airline#extensions#default#section_truncate_width = {
"  \ 'a': 60,
"  \ 'b': 72,
" \ 'x': 100,
"  \ 'y': 100,
"  \ 'z': 60,
"\ }
" }}}

set background=dark

" Configurations

let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
set ignorecase
set cursorline
set colorcolumn=80
set ruler

"" Active Buffers
set hidden

"" Show Lines
set number

"" Show Relative Lines
set relativenumber

"" Mouse ON
set mouse=a

"" Preview Substitute
set inccommand=split

"" Leader Key
let mapleader = ","

"" Nerdtree
nnoremap <leader>n :NERDTreeToggle<cr>
let g:NERDTreeHijackNetrw = 0
let NERDTreeMapActivateNode='<space>'

"" Fzf
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

"" Snippets
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetsDir='~/.config/nvim/UltiSnips'

"" Lint
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '**'

" Save
nnoremap <c-s> :w<cr>
"" Custom Commands
" comma dangle
nnoremap <leader>cd A,<esc>
" exit insert mode
imap jj <esc>

"" Open and Reload init.vim
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
