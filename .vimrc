set nocompatible              " be iMproved, required
" vundle setup {{{ "

filetype off                  " required

" set the runtime path to include Vundle and initialize
" set vimdirpath='~/.vim'
" git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'kamichidu/javacomplete'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-pathogen'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
"Plugin 'vim-scripts/matchit.zip'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'JamshedVesuna/vim-markdown-preview'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
syntax on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}}  "
" solarized {{{ "
syntax on
syntax enable
set background=dark
colorscheme solarized
" }}} solarized "
" ycm {{{ "
" Depending: cmake cmake-data libexpat1-dev libpython-dev libpython2.7-dev python-dev python2.7-dev
"force recompile
nnoremap <F5> :silent! YcmForceCompileAndDiagnostics<CR>
"set completeopt-=preview  
let g:ycm_always_populate_location_list = 1
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_cache_omnifunc = 0  
" Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
"customsize to Complete string and comments
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎"
"config of c header files 
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_register_as_syntastic_checker=0
"use syntastic to check syntax
let g:ycm_seed_identifiers_with_syntax=1  
let g:lt_height = 10
inoremap <leader>; <C-x><C-o>  
" }}} ycm "
" lightline {{{ "
set laststatus=2
set t_Co=256
" }}} lightline "
" nerdtree file explorer {{{ "
"NERDTree
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"map a specific key or shortcut to open NERDTree
nnoremap <silent> <F10> :NERDTreeToggle<CR> 
"打开目录
" }}} nerdtree file explorer "
" NERDComment {{{ "
let NERDCommentWholeLinesInVMode=1
nmap <F3> :call NERDComment(0, 'toggle') <CR> 
" }}} NERDComment "
" ultisnips template engine {{{ "
"set runtimepath+=~/.vim/bundle/ultisnips
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"
inoremap <c-x><c-k> <c-x><c-k>
" }}} ultisnips template engine "
" tagbar from ctag {{{ "
nmap <F9> :TagbarToggle<CR> 
" }}} tagbar from ctag "
" syntax checker syntastic {{{ "
execute pathogen#infect()
let g:syntastic_reuse_loc_lists=1
let g:syntastic_check_on_open=0
let g:syntastic_always_populate_loc_list = 1
"automatically opened and closed
let g:syntastic_auto_loc_list = 1
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"enable this to customsize label like ✗,⚠
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
"customsize the height of the location lists syntastic opens
let g:syntastic_loc_list_height=6

"customsize checkers of js and python
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_python_checkers=['pyflakes']
"let g:syntastic_python_checkers=['flake8']
"let g:syntastic_python_checkers=['pep8']
let g:syntastic_python_checkers=['pylint']
"pip uninstall pylint astroid logilab-common pep8

"auto jump to error if detected
let g:syntastic_auto_jump=0
let g:syntastic_disabled_filetypes=['html']

"map f6 to check syntax
nnoremap <F6> :SyntasticCheck<CR> :YcmDiags<CR>
" }}} syntax checker syntastic "
" remark to customsize {{{ "
nmap <F2> :w<CR>
nmap <F4> :q<CR>
nmap <F7> :tabnext<CR>
nmap <F8> gg=G''
set pastetoggle=<F12>
nmap <C-N> :tabnew 
"nnoremap [ :tabprevious<CR>
"nnoremap ] :tabnext<CR>
"show num of line
set nu
"tweak the backspace
set backspace=indent,eol,start
"show realtive number
"set relativenumber
"show match command in vim
set wildmenu
"highlight matchend word
set hlsearch
" The width of a TAB is set to 4.
" Still it is a \t. It is just that
" Vim will interpret it to be having
" a width of 4.
set tabstop=4       
" Indents will have a width of 4.
set shiftwidth=4
" Sets the number of columns for a TAB.
set softtabstop=4
" Expand TABs to spaces.
set expandtab
" Read config line in file like: # vim: set ai et nu sw=4 ts=4 tw=79
" Warning: must has space on both side of modeline
set modeline
" Fold by mark
set foldmethod=marker

"if &filetype != "htmldjango"
"set foldmethod=marker
"endif
"if &filetype == "htmldjango"
"set foldmethod=indent
"endif
"And autocmd can solve it beautifully
augroup DJANGO
    " this one is which you're most likely to use?
    autocmd BufRead,BufNewFile *.html set foldmethod=indent
augroup END

" jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") 
                \| exe "normal! g'\"" | endif
endif

"html indent
let g:html_indent_inctags = "html,body,head,tbody,div,p,a"
" }}} remark to customsize "
" more hints for future changes {{{ "
"key has binded
"<F1> => help
"<F2> => :w<CR>
"<F3> => :NERDComment<CR>
"<F4> => :q<CR>
"<F5> => :refresh ycm cache
"<F6> => :SyntasticCheck
"<F7> => :tabnext
"<F8> => :gg=G
"<F9> => :ctag
"<F10>=> :explorer
"<F12>=> :turn off autoindent when you paste code, there's a special "paste" mode.
"%    => :jump to the head nad tail of indent
"a an A both append while A append to eol
"b and B can both match word whether W match word ends with space backward
"CC   => NERDTree change the root to specific dir
"ci)  => replace the word in () c:change i:inside ):parens
"ci"  => replace the word in "" c:change i:inside ":quotes
"ci}  => change the word in }   c:change i:inside }:braces
"di)  => delete the word in )   d:delete i:inside ):parens
"d$   => delete to the end of line
"i    => :insert
"n and N with goto next matched word or prev
"o and O both means insert and line whether o means next O means prev
"s and S both subst line while S will effect
"u    => :ctrl-z
"v and V,<C-V> let visual form current cursor position or current line or <visual block>
"w and W can both match word whether W match word ends with space forward
"x and X delete char backward and forward
"#    => :loop matched word backward (different with n or N,search the current word only )
"*    => :loop matched word forward (different with n or N,search the current word only )
"+    => :next line
"-    => :prev line
"> and < will indent the line
"zM||zR   => :closes all open folds||open all folds
"ZZ   => :quit like :x<CR>
"<C-I>=> :previous file
"<C-O>=> :next file
"<C-N>=> :tabnew
"<C-R>=> :ctrl-y
"<C-Z>=> :suspend vim and use shell fg to back
"TODO: while install it,you need=> sudo apt-get install python-dev pep8 pyflakes
"push to all user: sudo ln -s /home/kevin/.vimrc ~/.vimrc && ln -s /home/kevin/.vim ~/.vim
" }}} more hints for future changes "
