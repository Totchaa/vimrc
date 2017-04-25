" ------------------------------------------------------------------
"  Code thats needed for Vundle to work and properly Install Plugins
" ------------------------------------------------------------------
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" Don't forget to install the C libraries and Python headers
Bundle 'Valloric/YouCompleteMe'

" Might not work properly with YCM, small fix below.
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" --------------------------------------------------------
" Code that's needed/usefull for some installed Plugins or Bundles
" --------------------------------------------------------

" First line ensures the autocomplete windows goes away when finnished.
" Second line defines shortcut for goto definition (Leader key + g).
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" This line should make it possible to run syntastic with YCM at the same time
let g:ycm_show_diagnostics_ui = 0


" ------------------------------------------------
" Following are some nice general settings for Vim
" ------------------------------------------------

set nu " Line numbers

" Set some split screens
set splitbelow
set splitright

" Split navigations (Navigate between the split screens)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Forces encoding utf-8
set encoding=utf-8

" Standard tab is probably 4 
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

