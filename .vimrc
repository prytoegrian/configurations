"relative number and number for the current line
set rnu
set nu

"refresh when changed from outside
set autoread

"4 spaces for tab
set shiftwidth=4
set tabstop=4
set showtabline=2
set expandtab

"mouse (for beginner :D)
set mouse=a

"keep indent on new line
set autoindent

"force encoding
set encoding=utf8

"no backup
set nobackup
set nowritebackup
set noswapfile

"searching improvements
set incsearch
set ignorecase

"activate syntax highlight
syntax on

"fill buffer list
nmap <F5> :args `git ls-files` <cr>

"highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

"indent based folding
set fdm=indent
nnoremap <space> za
"… and avoid to many nested folds
set fdn=2

"redefine command mode colon for azerty and bépo keyboards
nnoremap , :


" IN TEST
" -----------
" keep indent on new line
set copyindent

" show last command
set showcmd

" highlight current line
" set cursorline

" visual autocomplete
set wildmenu

" matching bracket
set showmatch

" improve searching
set hlsearch


