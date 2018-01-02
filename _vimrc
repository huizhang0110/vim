set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'scrooloose/nerdtree'
Plugin 'python-mode/python-mode'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe' " ./install.sh
Plugin 'Raimondi/delimitMate'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
let mapleader='\'
" setting for NerdTree
" o : open file or dir
" go: open file or dir but cursor on the memu
" i : open file in a vertical splited  window 
" s : open file in a horizontal splited window 
map <F3> : NERDTreeMirror<CR>
map <F3> : NERDTreeToggle<CR>
" common setting 
" set number
set expandtab
set tabstop=4
set ignorecase
set guifont=Consolas:h11
colorscheme freya

" python-mode setting
" \r run python code
" \K search doc
" za open code fold
" ctrl c+g go to function definition
let g:pymode_python='python3'

" nerdcommenter
" \cc \cu comment uncomment

" YouCompleteMe setting
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
let g:ycm_complete_in_comments = 1 " 在注释中补全
let g:ycm_complete_in_strings = 1 " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 " 注释和字符串中的文字也会被收入补全
