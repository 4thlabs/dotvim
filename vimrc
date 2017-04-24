call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --clang-completer' }
Plug 'terryma/vim-smooth-scroll'
Plug 'majutsushi/tagbar'
Plug 'mkitt/tabline.vim'
Plug 'mzlogin/vim-markdown-toc'

call plug#end()


filetype plugin indent on
syntax on
set backspace=indent,eol,start
set number
set mouse=a
set showcmd

let g:nerdtree_tabs_open_on_console_startup=1
" let g:nerdtree_tabs_autofind=1
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
let g:ctrlp_custom_ignore = 'node_modules\|git'

let g:ctrlp_working_path_mode='a' " Searching in current path

let NERDTreeChDirMode=2

let g:vmt_auto_update_on_save=0

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

nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
