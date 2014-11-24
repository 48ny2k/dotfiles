
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'Lokaltog/powerline-fonts'
Plugin 'runsisi/consolas-font-for-powerline'
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Plugin 'jeetsukumaran/vim-buffergator'
" Buffergator lists, selects, and switches buffers
" Use `<Leader>b` (typically: `\b`) to open a window listing all buffers. In this
" window, you can use normal movement keys to select a buffer and then:
" - <ENTER> to edit the selected buffer in the previous window
" - <C-V> to edit the selected buffer in a new vertical split
" - <C-S> to edit the selected buffer in a new horizontal split
" - <C-T> to edit the selected buffer in a new tab page
" https://github.com/jeetsukumaran/vim-buffergator
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Plugin 'nelstrom/vim-visual-star-search'
" This allows you to select some text using Vim's visual mode and then hit *
" and # to search for it elsewhere in the file. For example, hit V, select
" a strange sequence of characters like '$! $!', and hit star. You'll find
" all other runs of '$! $!' in the file.
"
" If you hit <leader>* ('\*' unless you changed the mapleader), vim will
" recursively vimgrep for the word under the cursor or the visual selection.
" 
" Vim's default behavior is to just extend the visual selection to the next
" word that matches the word under the cursor. Doesn't seem very useful.
" https://github.com/nelstrom/vim-visual-star-search
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Plugin 'mbbill/undotree'
" Display your undo history in a graph. Mapped to <leader(\)>u.
" https://github.com/mbbill/undotree
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Plugin 'edkolev/tmuxline.vim'
" Use vim/vim-airline/lightline.vim colors, so tmux and vim share the same statusline colortheme.
" Preloaded with stock themes and presets, which can be combined anyway you want.
" Configure tmux statusline using a simple hash, in case stock presets don't meet your needs.
" Create a snapshot .conf file which can be sourced by tmux, no need to open vim to set your tmux statusline.
" https://github.com/edkolev/tmuxline.vim
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Plugin 'MattesGroeger/vim-bookmarks'
" This vim plugin allows toggling bookmarks per line.
" A quickfix window gives access to all bookmarks.
" Annotations can be added as well.
" These are special bookmarks with a comment attached.
" They are useful for preparing code reviews.
" All bookmarks will be restored on the next startup. 
" https://github.com/MattesGroeger/vim-bookmarks
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Plugin 'kien/ctrlp.vim'
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
" Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
" Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find MRU file mode.
" Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
" Check :help ctrlp-commands and :help ctrlp-extensions for other commands.
" https://github.com/kien/ctrlp.vim
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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

"-----------------------------------------------------------------------
" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
       
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
 
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
 
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=a         " Enable the use of the mouse.

set laststatus=2    " Always show the statusline
 
filetype plugin indent on
syntax on
set encoding=utf-8
set noshowmode
"-----------------------------------------------------------------------
nnoremap <silent> <F5> :NERDTree<CR>
nnoremap <silent> <F4> :PluginInstall<CR>
" ---------------------------------------------------------------------
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
"----------------------------------------------------------------------
" Soruby theme
set t_Co=256
if &term =~ '256color'
" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen.
" See also http://snk.tuxfamily.org/log/vim-256color-bce.html
set t_ut=
endif
colorscheme soruby
"---------------------------------------------------------------------

" autocmd vimenter * NERDTree
let g:ctrlp_show_hidden=1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme = 'murmur'
let g:airline_powerline_fonts = 1
" set guifont=/powerline-fonts/UbuntuMono/10
