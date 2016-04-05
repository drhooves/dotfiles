" --------------------
" Plug plugins
" ---
call plug#begin('~/.config/nvim/plugged')

silent Plug 'lervag/vimtex'

Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'djjcast/mirodark'
Plug '29decibel/codeschool-vim-theme'
Plug 'sudar/vim-arduino-syntax'

call plug#end()

" --------------------
" vim-latex
" ---
" set grepprg="grep -nH $*"
" let g:tex_flavor='latex'

" --------------------
" Theme Stuff
" ---
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme codeschool
syntax on


" -------------------- 
" Other options
" ---
set ruler			" show the cursor position all the time
set clipboard=unnamedplus	" Use clipboard as unnamed register
set mouse-=a


" --------------------
" Mappings
" ---
map Q gq

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

nnoremap <silent> <left> :previous<CR>
nnoremap <silent> <right> :next<CR>

nnoremap <silent> [a :previous<CR>
nnoremap <silent> ]a :next<CR>
nnoremap <silent> [A :first<CR>
nnoremap <silent> ]A :last<CR>

" --------------------
" Filetype
" ---
filetype plugin indent on	" Enable file type detection.
augroup filetype_stuff
au!

" For all text files set 'textwidth' to 78 characters.
 autocmd FileType text setlocal textwidth=78

 autocmd FileType java setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

augroup END
