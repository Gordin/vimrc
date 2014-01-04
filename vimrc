set nocompatible              " be iMproved
filetype off                  " required for vundle

" Do Vundle stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

""" Fugitive """
command! Gpush Git push
command! Gpull Git pull
Bundle 'tpope/vim-fugitive'

""" Easymotion """
Bundle 'Lokaltog/vim-easymotion'

""" Airline """
let g:airline_powerline_fonts = 1
let g:airline_theme="powerlineish"
let g:airline#extensions#tabline#enabled = 1
Bundle 'bling/vim-airline'

""" NerdTree """
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
Bundle 'scrooloose/nerdtree'

""" Syntastic """
Bundle 'scrooloose/syntastic'

""" Easyclip """
" Delete commands don't yank any more
" visual paste does not yank any more
" new "m" command
Bundle 'svermeulen/vim-easyclip'

""" Recover """
Bundle 'chrisbra/Recover.vim'

""" Conceal Plugins """
"Bundle 'tyok/js-mask'
"Bundle 'ehamberg/vim-cute-python'

""" IndentLine (Indent Guides with Conceal) """
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
" other lines: ┆ ¦ │
Bundle 'Yggdroot/indentLine'

""" DelimitMate """
Bundle "Raimondi/delimitMate"

""" Repeat """
" Make actions of some plugins repeatable
Bundle 'tpope/vim-repeat'

""" NerdCommenter """
"Bundle 'scrooloose/nerdcommenter'
Bundle 'tomtom/tcomment_vim'

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
Bundle 'tpope/vim-surround'

""" Session Manager """
Bundle 'vim-scripts/sessionman.vim'

""" Vim Colors (Colorschemes) """
Bundle 'spf13/vim-colors'

""" TagBar """
nmap <F8> :TagbarToggle<CR>
Bundle 'majutsushi/tagbar'

""" CoffeeScript """
Bundle 'kchmck/vim-coffee-script'

""" Easymotion """
let g:EasyMotion_leader_key = '<Leader>'
Bundle 'Lokaltog/vim-easymotion'

""" MatchTagAlways and matchit """
" This highlights enclosing/matching tags in HTML and XML
Bundle 'Valloric/MatchTagAlways'
" This allows % to jump between open and closing tags
Bundle 'matchit.zip'

""" UltiSnips and Snippets """
let g:UltiSnipsExpandTrigger =          '<leader><tab>'
let g:UltiSnipsListSnippets =           '<leader><c-tab>'
let g:UltiSnipsJumpForwardTrigger =     '<leader><c-j>'
let g:UltiSnipsJumpBackwardTrigger =    '<leader><c-k>'
Bundle 'SirVer/ultisnips'

""" You Complete Me """
let g:ycm_autoclose_preview_window_after_insertion = 1
Bundle 'Valloric/YouCompleteMe'

""" Tern for Vim """
Bundle 'marijnh/tern_for_vim'

""" CSV """
Bundle 'chrisbra/csv.vim'

""" Signify """
Bundle 'mhinz/vim-signify'
let g:signify_vcs_list = [ 'git', 'hg', 'svn' ]
let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'
" Colors for Signify symbols are defined in CSApprox_hook_post

""" Colorscheme Approximation """
" This transforms colorschemes to terminal colorschemes
" The ctermbg=NONE hooks make backgrounds transparent in terminals
Bundle 'godlygeek/csapprox'
let g:CSApprox_hook_post = ['highlight Normal ctermbg=NONE ctermfg=NONE',
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
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <c-a-p> :CtrlPMixed<CR>
" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
\ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
\ 'file': '\.exe$\|\.so$\|\.dat$'
\ }
Bundle 'kien/ctrlp.vim'


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
let maplocalleader = "\\"

""" Spellchecking """
set spelllang=de_20,en          " german and english spellchecking
set nospell                     " disable spellchecking on startup


""" Folding """
set foldlevelstart=0
set foldmethod=indent           " Fold automatically based on indentation level

" Space to toggle folds. A toggles recursively until line of cursor is unfolded
nnoremap <Space> zA
vnoremap <Space> zA

au FileType c setlocal foldmethod=syntax    " Fold based on syntax in C files


""" Looks """
set t_Co=256                    " Tell vim that our Terminal has 256 Colors
set background=dark             " Tell vim that our background is dark
colorscheme molokai             " Select cholorscheme
set noshowmode                  " Hide the mode text as airline already shows this
set showcmd                     " Show partially entered commands in the statusline

set laststatus=2                " Always show the statusline

syntax on                       " Syntax highlighting
set number                      " Show line numbers
set ruler                       " Show the line and column number of the cursor position,
set cursorline                  " Highlight the line with the cursor
set mousehide                   " Hide the mouse cursor while typing (works only in gvim?)

set showmatch                   " Highlight matching brackets when a pair is closed

"" Listchars ""
set list                        " enable listchars
set listchars=""                " Reset the listchars
set listchars=tab:\ \           " a tab should display as " ", trailing whitespace as "."
set listchars+=trail:…          " show trailing spaces as dots
set listchars+=eol:¬            " show line break
set listchars+=extends:>        " The character to show in the last column when wrap is off and the
                                " line continues beyond the right of the screen
set listchars+=precedes:<       " The character to show in the last column when wrap is off and the
                                " line continues beyond the right of the screen

""" History, Backup, undo """
set history=10000

set backup                      " Enable backups ...
set backupdir=~/.vim/tmp/backup " set directory for backups

" Don't backup files in temp directories
set backupskip=/tmp/*,/private/tmp/*,~/.vim/tmp/,~/tmp/"

if has('persistent_undo')
    set undofile                " So is persistent undo ...
    set undodir=~/.vim/tmp/undo " undo files
    set undolevels=1000         " Maximum number of changes that can be undone
    set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
endif

set directory=~/.vim/tmp/swap   " set directory for swap files


""" Behaviour """
set autoindent          " automatically indent stuff
set smartindent         " Do autoindenting based on systax
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set matchpairs+=<:>     " Match, to be used with %

set mouse=a             " Automatically enable mouse usage
set hidden              " allow to switch buffers without saving

set wildmenu            " Completion for :Ex mode. Show list instead of just completing
set wildmode=longest:full,full       " Command <Tab> completion, Show all matches, cycle through with <tab>
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
noremap j gj
noremap k gk

"" Searching ""
set ignorecase          " Ignore case while searching
set smartcase           " Be case sensitive when capital letters are used
set incsearch           " start searching while typing
set hlsearch

" Toggle search-highlights with <leader>/
nmap <silent> <leader>/ :set invhlsearch<CR>

" Automatically turn hlsearch on again when you search or go through results
nnoremap / :set hlsearch<CR>/
nnoremap ? :set hlsearch<CR>/
nnoremap <silent> n :set hlsearch<CR>n
nnoremap <silent> N :set hlsearch<CR>N

" Stay on the selected word when selecting a word with * or # to search for
nnoremap <silent> * :call SavePos()<CR>*:call RestorePos()<CR>
nnoremap <silent> g* :call SavePos()<CR>g*:call RestorePos()<CR>
nnoremap <silent> # :call SavePos()<CR>#:call RestorePos()<CR>
nnoremap <silent> g# :call SavePos()<CR>g#:call RestorePos()<CR>

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
  set nolazyredraw
endfunction

" In visual mode press * or # to search for the current selection
" selections will be found inside other words, even if a whole word is selected
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"" Diffing ""

" Use dp and do only on selected lines
vnoremap dp :diffput<CR>:diffupdate<CR>
vnoremap do :diffget<CR>:diffupdate<CR>

" fast Diffoff
nnoremap <leader>D :diffoff!<cr>

" Diff current buffer against currently saved version of the file
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis


""" Tabs, Spaces, Wrapping """
set tabstop=8           " <tab> is 8 spaces long
set shiftwidth=4        " shift text by 4 spaces with autoindent or << / >>
set softtabstop=4       " Use shiftwidth als visible width of tabs
set expandtab           " expands <tab> to spaces
set nowrap              " disables wrapping text at the end of lines
set formatoptions+=qrn12        " Set formatting options
"set textwidth=99        " maximum with of a line is 85
"set colorcolumn=+1

""" Abbreviations """
iabbrev :ldis: ಠ_ಠ
iabbrev :shrug: ¯\_(ツ)_/¯
iabbrev :flip: (╯°□°)╯︵ ┻━┻
iabbrev :aflip: (ﾉಥ益ಥ）ﾉ ┻━┻
iabbrev :patience: ┬─┬ ノ(゜-゜ノ)

""" Autocommands """
" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost .vimrc :CSApprox
autocmd! bufwritepost vimrc source ~/.vimrc
autocmd! bufwritepost vimrc :CSApprox


" Instead of reverting the cursor to the last position in the buffer, we
" set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Return to last edit position (You want this!) [N]
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

""" Filetype specific stuff """

" Make sure all mardown files have the correct filetype set and setup wrapping
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown

" Treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript


""" Convenience mappings """

" Clean whitespace
map <leader>W  :%s/\s\+$//<cr>:let @/=''<CR>

" Substitute
nnoremap <leader>S :%s/

" Faster Esc
inoremap jk <esc>

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

set pastetoggle=<F12>     " Toggle paste with <F12>

