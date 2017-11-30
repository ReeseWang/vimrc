set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
if has("unix")
	Plugin 'valloric/youcompleteme'
endif
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-ragtag'
Plugin 'Rename'
Plugin 'gregjurman/vim-nc'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'klen/python-mode'
Plugin 'SQLUtilities'
Plugin 'Align'
Plugin 'wolfgangmehner/matlab-support'
Plugin 'MatlabFilesEdition'
Plugin 'matchit.zip'
if has("gui_running")
	Plugin 'yuttie/comfortable-motion.vim'
endif
Plugin 'taglist.vim'
Plugin 'brookhong/cscope.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Font and appeariance
syntax enable
if has("gui_running")
	if has("gui_gtk2") || has("gui_gtk3")
		set guifont=Source\ Code\ Pro\ Medium\ 11 
	elseif has("gui_win32")
		set guifont=Source_Code_Pro_Medium:h11:cANSI:qDRAFT
	endif
	colorscheme solarized
endif
set background=dark

set exrc " Execture .vimrc in working directory
set guioptions-=T " Remove toolbar
set hlsearch " Highlight content which match the search
set incsearch
set nu
set showcmd

" <leader>gf to open file under cursor, create the file if nonexistent
:map <leader>gf :e <cfile><cr>

" python-mode related settings
runtime ./python-mode.vim

" Type ,cd to change working directory to current file and show pwd
nnoremap ,cd :lcd %:p:h<CR>:pwd<CR>

" syntastic related settings
runtime ./syntastic.vim

" matlab-support related settings
runtime ./matlab-support.vim

" cscope related settings
runtime ./cscope.vim

" comfortable-motion related settings
if has("gui_running")
	runtime ./commotion.vim
endif

" vim-indent-guides related
runtime ./indent.vim
