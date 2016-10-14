filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'travisjeffery/vim-auto-mkdir'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'danro/rename.vim'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'joonty/vim-phpqa'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


