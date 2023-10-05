call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'kien/rainbow_parentheses.vim'
Plug 'pangloss/vim-javascript'
Plug 'tomasiser/vim-code-dark'
Plug 'rust-lang/rust.vim'
Plug 'tell-k/vim-autopep8'
call plug#end()

" General Vim Settings
set t_Co=256
set guioptions=aAce
set mouse=a
set smarttab
set expandtab
set autoindent
set backspace=indent,eol,start
set number
set nowrap
syntax on
filetype plugin indent on
colorscheme codedark
set pastetoggle=<F12>
highlight Pmenu ctermbg=238 gui=bold
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.egg,*.tar.gz,*.tar,*.gz,*.out,*/static/vendor/*,*.min.css,*.min.js,*.css.map,*.jpg,*.png,*.gif
if !has('nvim')
        set ttymouse=sgr
endif

" Shortcuts for moving around splits with ctrl + Arrow
map <C-Left> <C-W><Left>
map <C-Right> <C-W><Right>
map <C-Up> <C-W><Up>
map <C-Down> <C-W><Down>

" NERDTree Settings
map <F2> :NERDTreeToggle<CR>
map <F3> :Todo<CR>
map <F4> :RustFmt<CR>
autocmd FileType python noremap <buffer> <F7> :call Autopep8()<CR>
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '\.out$', '\.git$', '\.class$', '.DS_Store', '\.swp$', '^.pytest_cache$']
let NERDTreeShowHidden=1
let NERDTreeMinimalMenu=1

" black settings
let g:black_use_virtualenv = 0

" vim-javascript settings
let g:javascript_plugin_flow = 1
let g:airline_theme = 'codedark'

" Auto-enable RainbowParaentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare

" Enable TODO search
" command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw
