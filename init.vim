execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'

let g:python_host_prog = '/Users/ewanvalentine/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/ewanvalentine/.pyenv/versions/neovim3/bin/python'

let g:spacevim_colorscheme = 'Atom'

let g:mapleader = ' '
let mapleader = ' '

" Multi-line Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Spacing
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType php set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType go set tabstop=4|set shiftwidth=4|set expandtab

" Misc
set nohlsearch
set showcmd
set showmode
set linespace=0
set number
set expandtab
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

" Fuzzy search
nnoremap <C-p> :FZF<CR>

" Neocomplete
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :wq<CR>

" Set clipboard
set clipboard=unnamed

function! DefaultWorkspace()

    " Rough num columns to decide between laptop and big monitor screens
    let numcol = 3

		autocmd VimEnter * NERDTree
		autocmd VimEnter * wincmd p

		sp term://zsh
    resize 8
		file Shell

endfunction

:au BufEnter * if &buftype == 'terminal' | :startinsert | endif

command! -register DefaultWorkspace call DefaultWorkspace()
