set tabstop=4 shiftwidth=4 expandtab

call plug#begin('~/.vim/plugged')
Plug 'mattn/vim-goimports'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'flazz/vim-colorschemes'
Plug 'jremmen/vim-ripgrep'
Plug 'rhysd/vim-clang-format'
Plug 'psf/black'
Plug 'google/vim-jsonnet'
call plug#end()

syntax on
set noswapfile

nnoremap <C-s> :noh<cr>
nnoremap <C-h> :tabprev<cr>
nnoremap <C-l> :tabnext<cr>
nnoremap <C-S-k> :tabnew<cr>
nnoremap <C-S-j> :tabclose<cr>
nnoremap <m-t> :NERDTreeToggle<cr>
nnoremap <s-t> :terminal<cr>
nnoremap <m-f> :FZF<cr>
tnoremap <Esc> <C-\><C-n>
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

let g:Guifont="DejaVu Sans Mono :h8"
let g:black_linelength=100

set colorcolumn=100
set list

" color bluechia
" color Spink
" color deep-space
color Atelier_HeathLight
set nu

autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePre *.proto execute ':ClangFormat'
autocmd BufWritePre *.cpp execute ':ClangFormat'
autocmd BufWritePre *.go execute ':GoImportRun'
