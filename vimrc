set nocompatible              " be iMproved

call plug#begin('~/.vim/plugged')

Plug 'kopischke/vim-fetch'

let g:tex_fold_enabled=1
let g:fastfold_togglehook = 0
let g:fastfold_savehook = 1
Plug 'Konfekt/FastFold'

" Better navigation in help files
Plug 'dahu/vim-help'

" Display images as ASCII in vim
Plug 'ashisha/image.vim'


Plug 'terryma/vim-multiple-cursors'

Plug 'ConvertBase.vim'
Plug 'KabbAmine/vCoolor.vim'
au VimEnter * nmap <leader>co <Plug>vCoolor
"Somehowe <A-v> is the same as ö to vim...
au VimEnter * unmap ö
au VimEnter * iunmap ö

let g:CCTreeKeyTraceForwardTree = '<leader>>'
let g:CCTreeKeyTraceReverseTree = '<leader><'
let g:CCTreeKeyHilightTree = '<C-l>'        " Static highlighting
let g:CCTreeKeySaveWindow = '<C-\>y'
let g:CCTreeKeyToggleWindow = '<C-\>w'
let g:CCTreeKeyCompressTree = 'zs'     " Compress call-tree 
let g:CCTreeKeyDepthPlus = '<C-\>='
let g:CCTreeKeyDepthMinus = '<C-\>-'
Plug 'hari-rangarajan/CCTree'


Plug 'BlueCatMe/TempKeyword'
if has('gui_running')
    au VimEnter * call DeclareTempKeyword('1', 'bold', 'lightyellow', 'Black')
    au VimEnter * call DeclareTempKeyword('2', 'bold', 'green', 'Black')
    au VimEnter * call DeclareTempKeyword('3', 'bold', 'lightgreen', 'Black')
    au VimEnter * call DeclareTempKeyword('4', 'bold', 'brown', 'Black')
    au VimEnter * call DeclareTempKeyword('5', 'bold', 'lightmagenta', 'Black')
    au VimEnter * call DeclareTempKeyword('6', 'bold', 'lightcyan', 'Black')
else
    au VimEnter * call DeclareTempKeyword('1', 'bold', 'lightyellow', 16)
    au VimEnter * call DeclareTempKeyword('2', 'bold', 'green', 16)
    au VimEnter * call DeclareTempKeyword('3', 'bold', 'lightgreen', 16)
    au VimEnter * call DeclareTempKeyword('4', 'bold', 'brown', 16)
    au VimEnter * call DeclareTempKeyword('5', 'bold', 'lightmagenta', 16)
    au VimEnter * call DeclareTempKeyword('6', 'bold', 'lightcyan', 16)
endif
au VimEnter * call DeclareTempKeyword('7', 'bold', 'White', 'DarkRed')
au VimEnter * call DeclareTempKeyword('8', 'bold', 'White', 'DarkGreen')
au VimEnter * call DeclareTempKeyword('9', 'bold', 'White', 'DarkBlue')
au VimEnter * call DeclareTempKeyword('0', 'bold', 'White', 'DarkMagenta')

" Plug 'bogado/file-lane'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'

" Extend the global default (NOTE: Remove comments in dictionary before sourcing)
au VimEnter * call expand_region#custom_text_objects({ 'a]' :1, 'ab' :1, 'aB' :1, 'a<' : 1 }) ">
vmap v <Plug>(expand_region_expand)
vmap <c-v> <Plug>(expand_region_shrink)
Plug 'terryma/vim-expand-region'

"https://github.com/joom/latex-unicoder.vim/blob/master/autoload/unicoder.vim
Plug 'joom/latex-unicoder.vim'
au VimEnter * noremap <C-L> <C-W>l

" Plug 'gorkunov/smartpairs.vim'

Plug 'sjl/gundo.vim'

Plug 'mbbill/undotree'

let g:incsearch#auto_nohlsearch = 0
let g:incsearch#consistent_n_direction = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map <silent> n :set hlsearch<CR><Plug>(incsearch-nohl-n)<Plug>Pulse
map <silent> N :set hlsearch<CR><Plug>(incsearch-nohl-N)<Plug>Pulse
" nnoremap <silent> n :set hlsearch<CR>n
" nnoremap <silent> N :set hlsearch<CR>N
map <silent> *  :call SavePos()<CR><Plug>(incsearch-nohl-*):call RestorePos()<CR>:set hlsearch<CR><Plug>Pulse
map <silent> g* :call SavePos()<CR><Plug>(incsearch-nohl-g*):call RestorePos()<CR>:set hlsearch<CR><Plug>Pulse
map <silent> #  <Plug>(incsearch-nohl-#):set hlsearch<CR><Plug>Pulse
map <silent> g# <Plug>(incsearch-nohl-g#):set hlsearch<CR><Plug>Pulse
Plug 'haya14busa/incsearch.vim'

Plug 'inside/vim-search-pulse'
let g:vim_search_pulse_mode = 'pattern'
let g:vim_search_pulse_duration = 50
let g:vim_search_pulse_disable_auto_mappings = 1
let g:vim_search_pulse_color_list = [47, 48, 49, 50, 51]
let g:vim_search_pulse_color_list = [9, 10, 9]
" nmap <silent> n n<Plug>Pulse
" nmap <silent> N N<Plug>Pulse
" Pulses cursor line on first match when doing search with / or ?
" cmap <enter> <Plug>PulseFirst

" Plug "ivyl/vim-bling"

" Plug "xolox/vim-lua-ftplugin"
" Plug "xolox/vim-misc"
" Plug "xolox/vim-lua-inspect"

""" Fugitive """
command! Gpush Git push
command! Gpull Git pull
Plug 'tpope/vim-fugitive'

""" Easymotion """
Plug 'Lokaltog/vim-easymotion'

Plug 'ap/vim-css-color'

" astyle, autopep8, js-beautify
Plug 'Chiel92/vim-autoformat'

Plug 'gadgetxml.vim'

""" polyglot """
let b:LatexBox_loaded = 1 "Don't load LatexBox (we use latex-suite)
let g:coffee_make_options = '-b'
au BufRead,BufNewFile *.coffee set tabstop=8
au BufRead,BufNewFile *.coffee set shiftwidth=2
au BufRead,BufNewFile *.coffee set softtabstop=2
Plug 'sheerun/vim-polyglot'

""" Airline """
let g:airline_powerline_fonts = 1
let g:airline_theme="powerlineish"
let g:airline#extensions#tabline#enabled = 1
"let g:airline_section_warning = "%{airline#util#wrap(atplib#ProgressBar(),0)}%{airline#util#wrap(g:status_OutDir,0)}%{airline#util#wrap(airline#extensions#syntastic#get_warnings(),0)}%{airline#util#wrap(airline#extensions#whitespace#check(),0)}"
"let g:airline_section_warning = "%{airline#util#wrap(atplib#ProgressBar(),0)}%{airline#util#wrap(airline#extensions#syntastic#get_warnings(),0)}%{airline#util#wrap(airline#extensions#whitespace#check(),0)}"
Plug 'bling/vim-airline'

""" Automatic TeX Plugin """
"Plug 'coot/atp_vim'
"
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

Plug 'git://git.code.sf.net/p/vim-latex/vim-latex'



""" NerdTree """
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
Plug 'scrooloose/nerdtree'

Plug 'ryanoasis/vim-webdevicons'

""" Syntastic """
Plug 'scrooloose/syntastic'

""" Ack """
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'

""" Rainbow Parantheses """
let g:rainbow_active = 1
" Plug 'luochen1990/rainbow'
au VimEnter * RainbowParenthesesToggle
au VimEnter * RainbowParenthesesLoadRound
au VimEnter * RainbowParenthesesLoadSquare
au VimEnter * RainbowParenthesesLoadBraces
Plug 'kien/rainbow_parentheses.vim'

""" Recover """
Plug 'chrisbra/Recover.vim'

""" Conceal Plugins """
"Plug 'tyok/js-mask'
"Plug 'ehamberg/vim-cute-python'

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

""" IndentConsistencyCop """
Plug 'IndentConsistencyCop'
"Plug 'IndentConsistencyCopAutoCmds'

""" Sleuth """
" Detects and sets indentation
" Plug 'tpope/vim-sleuth'

""" NerdCommenter """
"Plug 'scrooloose/nerdcommenter'
Plug 'tomtom/tcomment_vim'
vmap gb :TCommentBlock<cr>

""" Surround """
" Surround stuff with braces or XML tags or delete/replace
" ds* delete cs* replace ys* surround
" t as * selects an XML tag
function! DeleteBrackets()
    normal %%
    let c = getline(".")[col(".") - 1]
    execute 'normal ds' . c
endfunction

nnoremap dss :call DeleteBrackets()<CR>
Plug 'tpope/vim-surround'

""" Session Manager """
Plug 'vim-scripts/sessionman.vim'

""" Vim Colors (Colorschemes) """
Plug 'spf13/vim-colors'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'w0ng/vim-hybrid'
Plug 'NLKNguyen/papercolor-theme'


" let base16colorspace=256  " Access colors present in 256 colorspace
" Plug 'chriskempson/base16-vim'



Plug 'aklt/plantuml-syntax'
" Plug 'dtjm/plantuml-syntax.vim'

" Automtic handling of ctags
" Plug 'ludovicchabant/vim-gutentags'

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

let g:UltiSnipsExpandTrigger =          '<leader><tab>'
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
let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer --system-libclang' }

""" Tern for Vim """
Plug 'marijnh/tern_for_vim', { 'do': 'npm install'}

Plug 'junegunn/fzf', { 'dir': '~/dotfiles/fzf', 'do': 'yes \| ./install' }
" List of buffers
function! BufList()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! BufOpen(e)
  execute 'buffer '. matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><c-?> :call fzf#run({
\   'source':      reverse(BufList()),
\   'sink':        function('BufOpen'),
\   'options':     '+m',
\   'tmux_height': '40%'
\ })<CR>

""" Signify """
Plug 'mhinz/vim-signify'
let g:signify_vcs_list = [ 'git', 'hg', 'svn' ]
let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'
" Colors for Signify symbols are defined in CSApprox_hook_post

""" Colorscheme Approximation """
" This transforms colorschemes to terminal colorschemes
" The ctermbg=NONE hooks make backgrounds transparent in terminals
Plug 'godlygeek/csapprox'
let g:CSApprox_hook_post = [
            \ 'highlight Normal ctermbg=NONE ctermfg=NONE',
            \ 'highlight LineNr ctermbg=NONE ctermfg=NONE',
            \ 'highlight SignifyLineAdd    cterm=bold ctermbg=NONE ctermfg=green',
            \ 'highlight SignifyLineDelete cterm=bold ctermbg=NONE ctermfg=red',
            \ 'highlight SignifyLineChange cterm=bold ctermbg=NONE ctermfg=yellow',
            \ 'highlight SignifySignAdd    cterm=bold ctermbg=NONE ctermfg=green',
            \ 'highlight SignifySignDelete cterm=bold ctermbg=NONE ctermfg=red',
            \ 'highlight SignifySignChange cterm=bold ctermbg=NONE ctermfg=yellow',
            \ 'highlight SignColumn        ctermbg=NONE',
            \ 'highlight NonText ctermbg=NONE ctermfg=NONE',
            \ 'highlight clear LineNr'
            \]

""" Ctrl + P """
let g:ctrlp_map = '<c-?>'
let g:ctrlp_cmd = 'CtrlP'
map <c-a-p> :CtrlPMixed<CR>
" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
\ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
\ 'file': '\.exe$\|\.so$\|\.dat$'
\ }
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden --ignore .git --ignore .svn --ignore .hg --ignore .DS_Store --ignore "**/*.pyc" -g ""'
" let g:ctrlp_use_caching = 0
Plug 'kien/ctrlp.vim'

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
Plug 'FelikZ/ctrlp-py-matcher'


filetype plugin indent on

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

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

" Make zO recursively open whatever fold we're in, even if it's partially open.
nnoremap zO zczO

" "Focus" the current line.  Basically:
"
" 1. Close all folds.
" 2. Open just the folds containing the current line.
" 3. Move the line to a little bit (15 lines) above the center of the screen.
" 4. Pulse the cursor line.  My eyes are bad.
"
" This mapping wipes out the z mark, which I never use.
"
" I use :sus for the rare times I want to actually background Vim.
nnoremap zz mzzMzvzz15<c-e>`z:Pulse<cr>

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

au FileType c setlocal foldmethod=syntax    " Fold based on syntax in C files

" Pulse Line
function! s:Pulse()
    redir => old_hi
        silent execute 'hi CursorLine'
    redir END
    let old_hi = split(old_hi, '\n')[0]
    let old_hi = substitute(old_hi, 'xxx', '', '')

    let steps = 8
    let width = 1
    let start = width
    let end = steps * width
    let color = 233

    for i in range(start, end, width)
        execute "hi CursorLine ctermbg=" . (color + i)
        redraw
        sleep 6m
    endfor
    for i in range(end, start, -1 * width)
        execute "hi CursorLine ctermbg=" . (color + i)
        redraw
        sleep 6m
    endfor

    execute 'hi ' . old_hi
  endfunction
command! -nargs=0 Pulse call s:Pulse()


""" Looks """
set t_Co=256                    " Tell vim that our Terminal has 256 Colors
set background=dark             " Tell vim that our background is dark
try
    colorscheme molokai             " Select cholorscheme
catch /^Vim\%((\a\+)\)\=:E185/
    " deal with it
endtry
" colorscheme base16-atelierforest             " Select cholorscheme
set noshowmode                  " Hide the mode text as airline already shows this
set showcmd                     " Show partially entered commands in the statusline
set lazyredraw

set laststatus=2                " Always show the statusline

syntax on                       " Syntax highlighting
set number                      " Show line numbers
set ruler                       " Show the line and column number of the cursor position,
set cursorline                  " Highlight the line with the cursor
set mousehide                   " Hide the mouse cursor while typing (works only in gvim?)
set scrolloff=10                " Always have 10 lines at the top/bottom above/below cursor

set showmatch                   " Highlight matching brackets when a pair is closed

"" Listchars ""
set list                        " enable listchars
set listchars=""                " Reset the listchars
set listchars=tab:»\            " a tab should display as " ", trailing whitespace as "."
set listchars+=trail:…          " show trailing spaces as dots
set listchars+=eol:¬            " show line break
set listchars+=extends:>        " The character to show in the last column when wrap is off and the
                                " line continues beyond the right of the screen
set listchars+=precedes:<       " The character to show in the last column when wrap is off and the
                                " line continues beyond the right of the screen

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
nnoremap H :tabprevious<CR>
nnoremap L :tabnext<CR>

" go down or up 1 visual line on wrapped lines instead of line of file
nnoremap j gj
nnoremap k gk
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
nmap <silent> <leader>/ :set invhlsearch<CR>

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

" Show the stack of syntax hilighting classes affecting whatever is under the
" cursor.
function! SynStack()
  echo join(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'), " > ")
endfunc

nnoremap <F7> :call SynStack()<CR>

"" Diffing ""

" Use dp and do only on selected lines
vnoremap dp :diffput<CR>:diffupdate<CR>
vnoremap do :diffget<CR>:diffupdate<CR>

" fast Diffoff
nnoremap <leader>D :diffoff!<cr>

" Diff current buffer against currently saved version of the file
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis


""" Tabs, Spaces, Wrapping """
set tabstop=4           " <tab> is 8 spaces long
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
autocmd! bufwritepost .vimrc :CSApprox
autocmd! bufwritepost vimrc source ~/.vimrc
autocmd! bufwritepost vimrc :CSApprox


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
au BufNewFile,BufRead *.json set ft=javascript


""" Convenience mappings """

" Clean whitespace
map <leader>W  :%s/\s\+$//<cr>:let @/=''<CR>

" Substitute
nnoremap <leader>S :%s/
nnoremap <leader>f :call SyncTexForward()<CR>

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

" Edit vimrc and expand symlinks to the actual folder
nnoremap <leader>vimrc :e <C-r>=resolve(expand("~/.vimrc"))<CR><CR>

" Easier movement between splits
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l
noremap <C-H> <C-W>h

" Keep cursor at the same position when joining lines
nnoremap J mzJ`z

" Get directory of current file in command line mode
cnoremap <leader>. <C-R>=expand('%:h').'/'<cr>

" Open directory of current file
nmap <leader>e. :e %:h<CR>

"Stop that stupid window from popping up:
map q: :q

set pastetoggle=<F12>     " Toggle paste with <F12>


" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()


noremap <silent> <leader>mk :!latexmk %:t:r -shell-escape -lualatex<CR><CR>





