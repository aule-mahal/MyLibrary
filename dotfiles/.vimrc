filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins
Plugin 'itchyny/lightline.vim'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pseewald/nerdtree-tagbar-combined'
Plugin 'drmingdrmer/xptemplate'
Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"filetype plugin indent on
syntax on

colorscheme elflord
set nu
set cursorline
highlight CursorLine cterm=bold ctermbg=238
set wrap

" Set tab to 4 spaces
set autoindent
set noexpandtab
set shiftwidth=4
set tabstop=4

" Indentation guidelines
set listchars:tab:\|\ 
set list

" Lightline Stuff
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Enter dev mode command (enable IDE-like plugins)
nmap <F2> :ToggleNERDTreeAndTagbar<CR>

" Sudo write this
cmap W! w !sudo tee % >/dev/null

" Make and Run commands
map <F9> :make<CR>
map <F10> :make run<CR>

" Toggle NERDTree easier
:command Nerd NERDTreeToggle  




" Interpret .ino files as cpp
au BufRead,BufNewFile *.ino,*.pde set filetype=cpp

let g:deoplete#enable_at_startup = 1

" vim arduino
"let g:arduino_dir = '/usr/share/local/arduino'
"let "g:arduino_board"'arduino:avr:uno'                                                                                                                                                
