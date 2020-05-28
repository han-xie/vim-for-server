filetype plugin indent on       " required

set tabstop=2                   " set the width of pressing tab key
set expandtab                   " convert tab to spaces
set shiftwidth=2                " number of spaces for indentation
set autoindent                  " automatic indentation
set number                      " show line number
set t_ti= t_te=                 " leave content on screen
set encoding=utf-8
" set relativenumber              " show relative number

nmap <C-L><C-L> :set invrelativenumber<CR>
" Toggle relative line number

nmap <C-H><C-H> :set invcursorcolumn<CR>
" Toggle highlight current column

" set cursorcolumn              " highlight current column
" set completeopt=longest,menu

" map keys to move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" delete trailing white spaces when saving a file
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

