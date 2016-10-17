set nocompatible		"We want the latest vim settings/options

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start	"Make backspace behave like every ohter editor
let mapleader = ' '		"The default leader is \, but a space is much better

set autowrite			"Automatically save buffer when chenges between it
set autowriteall

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4





"-----------Visuals-----------"
colorscheme atom-dark-256
set t_CO=256			"Use 256 colors. Useful for terminal vim

"Let's activate line numbers
set number			
hi LineNr ctermbg=bg

"Get rid of ugly split borders
hi vertsplit ctermbg=bg ctermfg=bg






"-----------Split management-----------"

set splitbelow
set splitright

map <C-H> <C-W><C-H>
map <C-J> <C-W><C-J>
map <C-K> <C-W><C-K>
map <C-L> <C-W><C-L>





"-----------Searching------------"
set hlsearch
set incsearch





"-----------Plugins-----------"

"/
"/ CtrlP
"/

let g:ctrlp_custom_ignore = 'node_modules\|git\|idea'


"/
"/ PHP-CS-FIXER
"/

let g:php_cs_fixer_level = "psr2"
let g:php_cs_fixer_verbose = 1

"/
"/ PHPQA
"/

" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0

" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0

" Show code coverage on load (default = 0)
let g:phpqa_codecoverage_autorun = 1


"-----------Mappings-----------"

"Make it easy to edit my Vimrc file
nmap <leader>ev :e $HOME/.vimrc<cr>

"Make it easy to browse my snippets files
nmap <leader>es :e ~/.vim/snippets/

"Make it easy to browse my snippets files
nmap <leader>ep :e ~/.vim/plugins.vim<cr>

"Add simple highlight removal
nmap <leader><space> :nohlsearch<cr>

"Make NERDTree easy to toggle
map <leader>nt :NERDTreeToggle<cr>

"Make CtrlP plugin easy to find recent files
map <C-P><Tab> :CtrlPMRU<cr>

"Make CtrlP plugin easy to find methods in class
map <C-P><C-F> :CtrlPBufTag<cr>

"Make it easy to save a file
map <C-S> :w<cr>
imap <C-S> <ESC>:w<cr> "

"Use php fixer simply
autocmd FileType php nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<cr><cr>



function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>





"-----------Laravel-specific------------"

nmap <leader>lr :e app/Http/routes.php<cr>
nmap <leader>lm :!php artisan make:
nmap <leader>lfc :e app/Http/Controllers/<cr>
nmap <leader>lfm :e app/<cr>
nmap <leader>lfv :e resources/views/<cr>





"-----------Auto-commands-----------"

"Automatically source the Vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END





" Tips and Tricks
"
" - Press 'zz' to instantly center the line where cursor is located
"
" - 'vi' + symbol to select all insider the pair of symbol
"   'va' + symbol the same as previous but with symbols
"   'ci' + symbil to change inner between symbols
"   'di' + simbol to delete inner between symbols
"
" - 'y' to copy selected 
"
" - 'cs' + ' + " to change surrounding symbol
"   'ds' + symbol to delete surrounding
"   'dst' to delete surrounding tag
"   'cst' to change surroundint tag
"   'S' in visulal mod to surround with tag  
"
" - '`0' in new window opens last edited file   
"
" - 'zo' to open current fold
"   'zc' to close current fold
"
" - '>' or '<' to shift selected blocks. Type number for multiply times
"
"
