filetype off                  " required


set encoding=UTF-8
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'pseewald/nerdtree-tagbar-combined'
Plugin 'drmingdrmer/xptemplate'
Plugin 'ARM9/arm-syntax-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'cocopon/pgmnt.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'idanarye/vim-vebugger'
Plugin 'stevearc/vim-arduino'
Plugin 'jeffkreeftmeijer/vim-dim'
Plugin 'agude/vim-eldar'
Plugin 'NLKNguyen/papercolor-theme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" VimPlug stuff
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

syntax on

set background=light
"colorscheme matchama
set termguicolors
"colorscheme eldar
colorscheme PaperColor 
"set notermguicolors
set nu
highlight CursorLineNr cterm=bold 
"set cursorline
"highlight CursorLine ctermbg=237
set hlsearch
set wrap

" tab indent lines
set list lcs=tab:\|\ 

" Set tab to 4 spaces
set autoindent
"set noexpandtab
set shiftwidth=4
set tabstop=4

" Lightline Stuff
set laststatus=2
let g:lightline = {
		\'colorscheme': 'matchama',
		\ 'active': {
		\   'left': [ [ 'mode', 'paste' ],
		\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
		\ },
		\ 'component_function': {
		\   'gitbranch': 'fugitive#head'
		\ },
		\ 'component': {
		\   'lineinfo': "%{line('.') . '/' . line('$')}",
		\ },
	\ }


" Open NERDTreeAndTagbar and open a terminal in bottom right
function DevMode()
	ToggleNERDTreeAndTagbar	
	rightbelow term
	res -11
	wincmd k
endfunction

" Enter dev mode command (enable IDE-like plugins)
nmap <F2> :ToggleNERDTreeAndTagbar<CR>
nmap <F3> :call DevMode()<CR>

" Use TAB to navigate CoC completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Sudo write this
cmap W! w !sudo tee % >/dev/null

" Make and Run commands
map <F9> :make<CR>:cw
map <F10> :make run<CR>:cw

" Toggle NERDTree easier
:command Nerd NERDTreeToggle  

" Reload vimrc without restarting
:command Rld source ~/.vimrc

" Arduino
let g:arduino_dir='/usr/share/arduino'

let g:deoplete#enable_at_startup = 1

