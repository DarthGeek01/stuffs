" This since we're not using vi
set nocompatible

" general config stuff
syntax on
filetype plugin indent on

" set variables that I want
set number
set ruler
set visualbell
set wrap
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set expandtab

set matchpairs+=<:>

set laststatus=2
set showmode
set showcmd


" Plugin stuff
call plug#begin('~/.vim/plugged')

    Plug 'lervag/vimtex'
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'junegunn/fzf.vim'
    Plug 'jiangmiao/auto-pairs'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'Vimjas/vim-python-pep8-indent'
    Plug 'dense-analysis/ale'
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

    
call plug#end()

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:ale_disable_lsp = 1
let g:ale_sign_column_always = 1
