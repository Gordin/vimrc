set nocompatible              " be iMproved

call plug#begin('~/.vim/plugged')

" process line and column jump specifications in file paths as found in
" stack traces and similar output (vim x:10 of e: x:10 will not open "x:10"
" but instead open x and jump to line 10)
Plug 'kopischke/vim-fetch'

let g:tex_fold_enabled=1
let g:fastfold_togglehook = 0
let g:fastfold_savehook = 1
Plug 'Konfekt/FastFold'

" adds maps to vim help files
" jump to ... option: o/O ,link: s/S, anchor: t/T
" jump to selected: <enter>/<backspace>
Plug 'dahu/vim-help'

" Makes sure vims current directory is set to the root of a project
Plug 'dbakker/vim-projectroot'

Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Plug 'zxqfl/tabnine-vim'

" Show a list of last open files when no file is opened at start
" set viminfo='100,n$HOME/.vim/tmp/info/viminfo
Plug 'mhinz/vim-startify'

" Ask if you wanted to open a different file when you open non-existant files
Plug 'EinfachToll/DidYouMean'

" Automatically create folders that don't exist
Plug 'DataWraith/auto_mkdir'


" Plug 'terryma/vim-multiple-cursors'
" Plug 'mg979/vim-visual-multi'


Plug 'BlueCatMe/TempKeyword'
try
    au VimEnter * call DeclareTempKeyword('1', 'bold', 'lightyellow', 'Black')
    au VimEnter * call DeclareTempKeyword('2', 'bold', 'green', 'Black')
    au VimEnter * call DeclareTempKeyword('3', 'bold', 'lightgreen', 'Black')
    au VimEnter * call DeclareTempKeyword('4', 'bold', 'brown', 'Black')
    au VimEnter * call DeclareTempKeyword('5', 'bold', 'lightmagenta', 'Black')
    au VimEnter * call DeclareTempKeyword('6', 'bold', 'lightcyan', 'Black')
    au VimEnter * call DeclareTempKeyword('7', 'bold', 'White', 'DarkRed')
    au VimEnter * call DeclareTempKeyword('8', 'bold', 'White', 'DarkGreen')
    au VimEnter * call DeclareTempKeyword('9', 'bold', 'White', 'DarkBlue')
    au VimEnter * call DeclareTempKeyword('0', 'bold', 'White', 'DarkMagenta')
catch
    " do nothing
endtry

" Plug 'bogado/file-lane'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'

" Extend the global default (NOTE: Remove comments in dictionary before sourcing)
au VimEnter * call expand_region#custom_text_objects({ 'a]' :1, 'ab' :1, 'aB' :1, 'a<' : 1 }) ">
vmap v <Plug>(expand_region_expand)
vmap <c-v> <Plug>(expand_region_shrink)
Plug 'terryma/vim-expand-region'

Plug 'sjl/gundo.vim'

Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
let g:incsearch#auto_nohlsearch = 0
let g:incsearch#consistent_n_direction = 1

Plug 'inside/vim-search-pulse'
let g:vim_search_pulse_mode = 'pattern'
let g:vim_search_pulse_duration = 50
let g:vim_search_pulse_disable_auto_mappings = 1
" let g:vim_search_pulse_color_list = [47, 48, 49, 50, 51]
" let g:vim_search_pulse_color_list = [9, 10, 9]
" nmap <silent> n n<Plug>Pulse
" nmap <silent> N N<Plug>Pulse
" Pulses cursor line on first match when doing search with / or ?
" cmap <enter> <Plug>PulseFirst

""" Fugitive """
command! Gpush Git push
command! Gpull Git pull
Plug 'tpope/vim-fugitive'


Plug 'justinmk/vim-sneak'
let g:sneak#s_next = 1

""" Easymotion """
Plug 'Lokaltog/vim-easymotion'

Plug 'ap/vim-css-color'

" astyle, autopep8, js-beautify
Plug 'Chiel92/vim-autoformat'

""" polyglot """
let b:LatexBox_loaded = 1 "Don't load LatexBox (we use latex-suite)
let g:coffee_make_options = '-b'
au BufRead,BufNewFile *.coffee set tabstop=8
au BufRead,BufNewFile *.coffee set shiftwidth=2
au BufRead,BufNewFile *.coffee set softtabstop=2
au BufRead,BufNewFile *.js set tabstop=8
au BufRead,BufNewFile *.js set shiftwidth=2
au BufRead,BufNewFile *.js set softtabstop=2
au BufRead,BufNewFile *.ts set tabstop=8
au BufRead,BufNewFile *.ts set shiftwidth=2
au BufRead,BufNewFile *.ts set softtabstop=2
Plug 'sheerun/vim-polyglot'

Plug 'mboughaba/i3config.vim'
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
  au BufNewFile,BufRead ~/.config/sway/config set filetype=i3config
aug end

" nnoremap <silent> <leader>xml :call XmlPretty()<CR>
" Plug 'XmlPretty', { 'do': 'dos2unix plugin/xmlpretty.vim'}

""" Airline """
let g:airline_powerline_fonts = 1
let g:airline_theme="powerlineish"
let g:airline#extensions#tabline#enabled = 1
"let g:airline_section_warning = "%{airline#util#wrap(atplib#ProgressBar(),0)}%{airline#util#wrap(g:status_OutDir,0)}%{airline#util#wrap(airline#extensions#syntastic#get_warnings(),0)}%{airline#util#wrap(airline#extensions#whitespace#check(),0)}"
"let g:airline_section_warning = "%{airline#util#wrap(atplib#ProgressBar(),0)}%{airline#util#wrap(airline#extensions#syntastic#get_warnings(),0)}%{airline#util#wrap(airline#extensions#whitespace#check(),0)}"
"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-airline-colornum'


let g:tex_flavor='latex'
"let s:tex_conceal= 'abdmgsS'
let g:tex_conceal=''
let g:tex_comment_nospell= 1

""" LaTeX-Box """
let g:LatexBox_latexmk_async = 1
let g:LatexBox_latexmk_preview_continuously = 1
let g:LatexBox_quickfix = 2
let g:LatexBox_latexmk_options = '-lualatex'
"let g:LatexBox_latexmk_options = '-xelatex'
let g:LatexBox_Folding = 1
let g:LatexBox_show_warnings = 0
"Plug 'LaTeX-Box-Team/LaTeX-Box'




let g:Tex_DefaultTargetFormat = 'pdf'
" let g:Tex_CompileRule_pdf = 'lualatex -shell-escape --interaction=nonstopmode --file-line-error-style $*'
let g:Tex_CompileRule_pdf = 'arara -v $*'
let g:Tex_UseMakefile = 0
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_SmartKeyQuote = 0
let g:Tex_ViewRule_ps = 'okular'
let g:Tex_ViewRule_pdf = 'okular'
let g:Tex_ViewRule_dvi = 'okular'

function! SyncTexForward()
  let s:syncfile = fnamemodify(fnameescape(Tex_GetMainFileName()), ":r").".pdf"
  let execstr = "silent !okular --unique ".s:syncfile."\\#src:".line(".").expand("%\:p").' &'
  exec execstr
  redraw!
endfunction

Plug 'https://github.com/vim-latex/vim-latex.git'

Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'joonty/vdebug'

au FileType ruby setlocal shiftwidth=2
au FileType ruby setlocal softtabstop=2
au FileType ruby setlocal expandtab
au FileType ruby setlocal tabstop=2           " <tab> is 4 spaces long
augroup ruby_settings
    autocmd!
    autocmd Filetype Ruby :setlocal iskeyword+=? iskeyword+=!
augroup end
" au FileType ruby setlocal nofixeol
" au FileType ruby setlocal noeol

"autocmd BufWritePost *.rb !ripper-tags -R --exclude=vendor


Plug 'metakirby5/codi.vim'

""" NerdTree """
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
Plug 'scrooloose/nerdtree'

Plug 'ryanoasis/vim-webdevicons'

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'W>'
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '%severity%: %s [%linter%]'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_delay = 200
" let g:ale_linters = {'zsh': ['shellcheck']}

let g:ale_fixers = { 'javascript': [ 'standard', 'eslint', ], 'typescript': [ 'tsserver', 'tslint' ] }
let g:ale_linters= { 'javascript': [ 'standard' ], 'typescript': [ 'tsserver', 'tslint' ],}
let g:ale_completion_tsserver_autoimport = 1
let g:ale_typescript_tslint_config_path = '.'

Plug 'w0rp/ale'

""" Typescript """
" Plug 'Quramy/tsuquyomi'
" Plug 'leafgarland/typescript-vim'
" Plug 'HerringtonDarkholme/yats.vim'
" set re=0

""" Ack """
Plug 'jremmen/vim-ripgrep'
Plug 'rking/ag.vim'

""" Rainbow Parantheses """
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

""" Recover """
" Gives the ability to compare swp files after a crash and can clean them up
Plug 'chrisbra/Recover.vim'

""" IndentLine (Indent Guides with Conceal) """
let g:indentLine_char = '»'
let g:indentLine_color_term = 239
" other lines: ┆ ¦ │
Plug 'Yggdroot/indentLine'

""" FakeClip """
" Clipboard stuff for Terminal vim. Paste to vim in screen
"Plug 'kana/vim-fakeclip'
set clipboard=unnamed

""" Repeat """
" Make actions of some plugins repeatable
Plug 'tpope/vim-repeat'

""" Auto close parantheses (repeatable)
Plug 'cohama/lexima.vim'

""" Sleuth """
" Detects and sets indentation
Plug 'tpope/vim-sleuth'

""" NerdCommenter """
"Plug 'scrooloose/nerdcommenter'
Plug 'tomtom/tcomment_vim'
vmap <silent> <c-_> :TCommentBlock<cr>
nmap <silent> <c-_> :TComment<cr>

""" Surround """
" Surround stuff with braces or XML tags or delete/replace
" ds* delete cs* replace ys* surround
" t as * selects an XML tag
function! DeleteBrackets()
    normal %%
    let c = getline(".")[col(".") - 1]
    execute 'normal ds' . c
endfunction

Plug 'tpope/vim-surround'
" Delete surrounding X => dsX

""" Vim Colors (Colorschemes) """
function! FixupBase16(info)
    !sed -i '/Base16hi/\! s/a:\(attr\|guisp\)/l:\1/g' ~/.vim/plugged/base16-vim/colors/*.vim
endfunction
Plug 'chriskempson/base16-vim', { 'do': function('FixupBase16') }
Plug 'morhetz/gruvbox'
Plug 'spf13/vim-colors'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'w0ng/vim-hybrid'
Plug 'NLKNguyen/papercolor-theme'
Plug 'aonemd/kuroi.vim'


""" TagBar """
nmap <F8> :TagbarToggle<CR>
Plug 'majutsushi/tagbar'

""" MatchTagAlways and matchit """
" This highlights enclosing/matching tags in HTML and XML
Plug 'Valloric/MatchTagAlways'

" This allows % to jump between open and closing tags
" Plug 'matchit.zip'
runtime macros/matchit.vim


""" UltiSnips and Snippets """
" UltiSnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets = "<leader><tab>"
"let g:UltiSnipsDontReverseSearchPath="1"

let g:UltiSnipsExpandTrigger =          '<tab>'
" let g:UltiSnipsListSnippets =           '<leader><c-tab>'
" let g:UltiSnipsJumpForwardTrigger =     '<leader><c-j>'
" let g:UltiSnipsJumpBackwardTrigger =    '<leader><c-k>'
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine.
Plug 'honza/vim-snippets'


""" You Complete Me """
" disable <tab>, <s-tab> as it is used by UltiSnips, c-n and c-p work just fine
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'
let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --ts-completer --system-libclang' }

""" Tern for Vim """
Plug 'marijnh/tern_for_vim', { 'do': 'npm install'}

""" Signify """
Plug 'mhinz/vim-signify'
let g:signify_vcs_list = [ 'git', 'hg', 'svn' ]
let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'

Plug 'davidhalter/jedi-vim'

Plug 'elzr/vim-json'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

""" Ctrl + P """
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_extensions = ['tag']
let g:ctrlp_working_path_mode = 'ra' " Search from current directory or go up until a vcs folder
map <c-a-p> :CtrlPMixed<CR>
" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
\ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
\ 'file': '\.exe$\|\.so$\|\.dat$'
\ }

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --hidden --ignore .git --ignore .svn --ignore .hg --ignore .DS_Store --ignore "**/*.pyc" -g ""'
  let g:ctrlp_use_caching = 0
endif

if executable('rg')
  " Use rg over grep
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
Plug 'ctrlpvim/ctrlp.vim'

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'ivalkeen/vim-ctrlp-tjump'

let g:ctrlp_tjump_shortener = ['/home/.*/work/', '.../']
"let g:ctrlp_tjump_only_silent = 1
au BufRead,BufNewFile *.py vnoremap <c-]> :CtrlPtjumpVisual<cr>
au BufRead,BufNewFile *.py nnoremap <c-]> :CtrlPtjump<cr>


au BufRead,BufNewFile *.ts vnoremap <leader>v :ALEGoToDefinition -vsplit<cr>
au BufRead,BufNewFile *.ts vnoremap <leader>t :ALEGoToDefinition -tab<cr>
au BufRead,BufNewFile *.ts vnoremap <c-]> :ALEGoToDefinition<cr>
au BufRead,BufNewFile *.ts nnoremap <leader>v :ALEGoToDefinition -vsplit<cr>
au BufRead,BufNewFile *.ts nnoremap <leader>t :ALEGoToDefinition -tab<cr>
au BufRead,BufNewFile *.ts nnoremap <c-]> :ALEGoToDefinition<cr>

call plug#end()

filetype plugin indent on

""" Stuff you don't notice """
set encoding=utf-8      " standard encoding is utf-8
scriptencoding utf-8

if !has('gui')
    set term=$TERM      " Make arrow and other keys work
endif

""" Leader """
let mapleader = ","
let maplocalleader = ","

""" Spellchecking """
set spelllang=de_20,en          " german and english spellchecking
set nospell                     " disable spellchecking on startup


""" Folding """
set foldlevelstart=0
set foldmethod=indent           " Fold automatically based on indentation level
" :help foldopen !
set foldopen=block,jump,mark,percent,quickfix,search,tag,undo

" Make zO recursively open whatever fold we're in, even if it's partially open.
nnoremap zO zczO

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

au FileType c setlocal foldmethod=syntax    " Fold based on syntax in C files

" " Pulse Line
" function! s:Pulse()
"     redir => old_hi
"         silent execute 'hi CursorLine'
"     redir END
"     let old_hi = split(old_hi, '\n')[0]
"     let old_hi = substitute(old_hi, 'xxx', '', '')
"
"     let steps = 8
"     let width = 1
"     let start = width
"     let end = steps * width
"     let color = 233
"
"     for i in range(start, end, width)
"         execute "hi CursorLine ctermbg=" . (color + i)
"         redraw
"         sleep 6m
"     endfor
"     for i in range(end, start, -1 * width)
"         execute "hi CursorLine ctermbg=" . (color + i)
"         redraw
"         sleep 6m
"     endfor
"
"     execute 'hi ' . old_hi
"   endfunction
" command! -nargs=0 Pulse call s:Pulse()


""" Looks """
set t_Co=256                    " Tell vim that our Terminal has 256 Colors
set termguicolors               " Use truecolor in terminal
set background=dark             " Tell vim that our background is dark
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
try
    " colorscheme molokai             " Select cholorscheme
    colorscheme gruvbox             " Select cholorscheme gruvbox-dark-medium
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
endtry
set noshowmode                  " Hide the mode text as airline already shows this
set showcmd                     " Show partially entered commands in the statusline
set lazyredraw

set laststatus=2                " Always show the statusline

syntax on                       " Syntax highlighting
set relativenumber              " Show line numbers relative to current line
set number                      " Show actual line number on current line
" [T]oggle [r]elative line numbers
nmap <leader>tr :set relativenumber!<CR>
set ruler                       " Show the line and column number of the cursor position,
set cursorline                  " Highlight the line with the cursor
set mousehide                   " Hide the mouse cursor while typing (works only in gvim?)
set scrolloff=2                 " Always have 2 lines at the top/bottom above/below cursor

set showmatch                   " Highlight matching brackets when a pair is closed

"" Listchars ""
set list                        " enable listchars
set listchars=""                " Reset the listchars
set listchars=tab:»\            " a tab should display as " ", trailing whitespace as "."
set listchars+=trail:…          " show trailing spaces as dots
set listchars+=eol:¬            " show line break
set listchars+=extends:>        " The character to show in the last column when wrap is off and the
                                " line continues beyond the right of the screen
set listchars+=precedes:<       " The character to show in the first column when wrap is off and the
                                " line continues beyond the left of the screen

set visualbell                  "Use visual bell instead of beeping
set vb t_vb=                    "Also turn visual Bell off...

""" History, Backup, undo """
set history=10000

set backup                      " Enable backups ...
set backupdir=~/.vim/tmp/backup// " set directory for backups

" Don't backup files in temp directories
set backupskip=/tmp/*,/private/tmp/*,~/.vim/tmp/,~/tmp/"

if has('persistent_undo')
    set undofile                  " Save undo history to file
    set undodir=~/.vim/tmp/undo// " undo files in folder
    set undolevels=100000          " Maximum number of undos
    set undoreload=100000          " Save complete files for undo on reload if it has less lines
endif

set directory=~/.vim/tmp/swap//   " set directory for swap files


""" Behaviour """
set autoindent          " automatically indent stuff
set smartindent         " Do autoindenting based on systax
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set matchpairs+=<:>     " Match, to be used with %

set mouse=a             " Automatically enable mouse usage
set hidden              " allow to switch buffers without saving

set wildmenu            " Completion for :Ex mode. Show list instead of just completing
set wildmode=full,full  " Command <Tab> completion, Show all matches, cycle through with <tab>
set wildchar=<tab>      " Make sure Tab starts wildmode
set wildignorecase      " ignore case in wildmode
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

set timeout             " Enable timeouts on mappings and key codes
set timeoutlen=300      " Set timeout for mappings
set ttimeoutlen=100     " Set timeout for keycodes

set splitbelow          " open vertical splits below current buffer
set splitright          " open horizontal splits right of current buffer

set gdefault            " substitutions have the g (all matches) flag by default. Add g to turn off

" Change to previous/next tab with H/L
nnoremap <leader>th :tabprevious<CR>
nnoremap <leader>tl :tabnext<CR>

" go down or up 1 visual line on wrapped lines instead of line of file
" Check the count to only do this without a count. (It will jump over wrapped
" lines when you give a count)
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap gj j
nnoremap gk k

" Allows to select beyond end of lines in block selection mode
set virtualedit=block

"" Searching ""
set ignorecase          " Ignore case while searching
set smartcase           " Be case sensitive when capital letters are used
set hlsearch

autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

set tags=./tags;/

" Toggle search-highlights with <leader>/
nmap <silent> <leader><space> :set invhlsearch<CR>

function! SavePos()
    " Save the current cursor position
    let g:save_cursor = getpos(".")
    " Save the window position
    set lazyredraw
    normal !H
    let g:save_window = getpos(".")
    call setpos('.', g:save_cursor)
endfunction

function! RestorePos()
    " Restore the window position
    call setpos('.', g:save_window)
    normal zt
    " Restore the cursor position
    call setpos('.', g:save_cursor)
    redraw!
endfunction

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \:call SavePos()<CR>
  \:let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
  \:call RestorePos()<CR>
vnoremap <silent> # :<C-U>
  \:call SavePos()<CR>
  \:let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
  \:call RestorePos()<CR>

"" Diffing ""

" Use dp and do only on selected lines
vnoremap <silent> dp :diffput<CR>:diffupdate<CR>
vnoremap <silent> do :diffget<CR>:diffupdate<CR>

" fast Diffoff
nnoremap <leader>D :diffoff!<cr>

" Diff current buffer against currently saved version of the file
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis


""" Tabs, Spaces, Wrapping """
set tabstop=4           " <tab> is 4 spaces long
set shiftwidth=4        " shift text by 4 spaces with autoindent or << / >>
set softtabstop=4       " Use shiftwidth als visible width of tabs
set expandtab           " expands <tab> to spaces
set wrap                " enables wrapping text at the end of lines
set formatoptions+=qrn12        " Set formatting options
"set textwidth=99        " maximum with of a line is 85
"set colorcolumn=+1

""" Abbreviations """
iabbrev :ldis: ಠ_ಠ
iabbrev :shrug: ¯\_(ツ)_/¯
iabbrev :flip: (╯°□°)╯︵ ┻━┻
iabbrev :aflip: (ﾉಥ益ಥ）ﾉ ┻━┻
iabbrev :patience: ┬─┬ ノ(゜-゜ノ)
iabbrev :zwnj: ‌
iabbrev :check: ✓

""" Autocommands """
" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost vimrc source ~/.vimrc

" Make q close the commend window (That thing when you hit q: or q/)
autocmd! CmdwinEnter * nnoremap <buffer> q <c-c><c-c>
autocmd! BufWinEnter quickfix nnoremap <silent> <buffer> q :q<cr>

" Instead of reverting the cursor to the last position in the buffer, we
" set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

"Jump to last cursor position when opening a file
autocmd BufReadPost * call s:SetCursorPosition()
function! s:SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

""" Filetype specific stuff """

" Make sure all mardown files have the correct filetype set
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} set filetype=markdown

" Treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=json


""" Convenience mappings """

" Search Mappings
nmap <silent> /  :set hlsearch<CR><Plug>(incsearch-forward)
nmap <silent> ?  :set hlsearch<CR><Plug>(incsearch-backward)
nmap <silent> g/ :set hlsearch<CR><Plug>(incsearch-stay)
nmap <silent> n :set hlsearch<CR><Plug>(incsearch-nohl-n)<Plug>Pulse
nmap <silent> N :set hlsearch<CR><Plug>(incsearch-nohl-N)<Plug>Pulse

nmap <silent> *  :let g:winview = winsaveview()<CR><Plug>(incsearch-nohl-*):call winrestview(g:winview)<cr>eb:set hlsearch<CR><Plug>Pulse
nmap <silent> g* :let g:winview = winsaveview()<CR><Plug>(incsearch-nohl-g*):call winrestview(g:winview)<c-o>eb:set hlsearch<CR><Plug>Pulse
nmap <silent> #  <Plug>(incsearch-nohl-#):set hlsearch<CR><Plug>Pulse
nmap <silent> g# <Plug>(incsearch-nohl-g#):set hlsearch<CR><Plug>Pulse

nmap <leader>/ <Plug>(incsearch-fuzzy-/)
nmap <leader>? <Plug>(incsearch-fuzzy-?)
nmap <leader>g/ <Plug>(incsearch-fuzzy-stay)


" paste last search: "/p
" execute yanked vim commands: :@"


" Clean whitespace
nnoremap <silent> <leader>W  :%s/\s\+$//<cr>:let @/=''<CR>

" Substitute
nnoremap <leader>S :%s/
nnoremap <leader>f :call SyncTexForward()<CR>

" Turns all double quotes to single quotes in selection
vnoremap "' :s/"/'/<cr>

" Faster Esc
inoremap jk <esc>

nnoremap <leader>T :!sdcv -u "English Thesaurus" <cword><cr>

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! w !sudo tee % >/dev/null

" cd to the directory containing the file in the buffer
nmap <silent> <leader>. :lcd %:h<CR>

" don't select the newline with $ in visual mode
vnoremap $ $h

" yank till start/end of line with H/L instead of tob/bottom of screen
nnoremap yH y^
nnoremap yL y$

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" Yank to system Clipboard (Ctrl+c / Ctrl+v)
nmap <leader>y "+y
vmap <leader>y "+y
vmap Y "+y

" Edit vimrc and expand symlinks to the actual folder
nnoremap <leader>vimrc :e <C-r>=resolve(expand("~/.vimrc"))<CR><CR>

" Easier movement between splits
noremap <leader>wj <C-W>j
noremap <leader>wk <C-W>k
noremap <leader>wh <C-W>h
noremap <leader>wl <C-W>l

" Use arrow keys to switch lines instead of moving around
nmap <silent> <up> :m -2<cr>
nmap <silent> <down> :m +1<cr>

" Keep cursor at the same position when joining lines
nnoremap J mzJ`z

" Get directory of current file in command line mode
cnoremap <leader>. <C-R>=expand('%:h').'/'<cr>

" Open directory of current file
nmap <leader>e. :e %:h<CR>

set pastetoggle=<F12>     " Toggle paste with <F12>

map <leader>st :Startify<cr>
map <leader>sT :tabe<cr>:Startify<cr>

let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_files_number = 10
let g:startify_update_oldfiles = 1
let g:startify_fortune_use_unicode = 1

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @* = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @*
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()


noremap <silent> <leader>mk :!latexmk "%:t:r" -shell-escape -lualatex<CR>
