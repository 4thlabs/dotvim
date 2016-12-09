execute pathogen#infect()
filetype plugin indent on
syntax on
set backspace=indent,eol,start
set number
set mouse=a
set showcmd

let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_autofind=1
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
let g:ctrlp_custom_ignore = 'node_modules\|git'

set expandtab ts=2 sw=2 ai

" let g:onedark_termcolors=256
" let g:solarized_termcolors=256
set background=dark
colorscheme onedark

inoremap jk <esc>

noremap <silent> <c-u> :call smooth_scroll#up(&scroll/2, 0, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll/2, 0, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll/2, 0, 2)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll/2, 0, 2)<CR>
