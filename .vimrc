" this file is mapped to ~/.config/nvim/init.vim

syntax enable
let mapleader="\\"

set ignorecase
set smartcase

set nu

source ~/.config/nvim/plugins/hardcore/hardcore.vim

" Hightlight color
set cursorcolumn
set cursorline

:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=#5f0000 " guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=#5f0000 " guifg=white

" Hightlight the current line, and mark with "m" to get back to it easily
:nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

" Gutter color
" :highlight SignColumn guibg=blue
:highlight SignColumn guibg=darkred


set expandtab     " don't use actual tab character (ctrl-v)
set tabstop=8     " tabs are at proper location
set shiftwidth=4  " indenting is 4 spaces
set numberwidth=1

set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs

" Fold
set foldmethod=syntax
set foldcolumn=2

" General Mapping
imap kk <esc>
imap jj <esc>
nnoremap ,i :source %<CR> :PlugInstall<CR>
nnoremap ,r :source %<CR>
nnoremap ,o :vs ~/.config/nvim/init.vim<CR>

" Indent
noremap > >>
noremap < <<
vnoremap ] >gv
vnoremap [ <gv

" Fold
nnoremap zz zA

" Variables
let g:user_emmet_leader_key=','

" Smart Home
noremap <expr> <silent> <Home> col('.') == match(getline('.'),'\S')+1 ? '0' : '^'
imap <silent> <Home> <C-O><Home>

" NerdTree
nnoremap <leader>n :NERDTreeToggle %<CR>
map <leader>r :NERDTreeFind<cr>
let NERDTreeShowHidden=1

" autocomplete
let b:vcm_tab_complete="omni,tags,vim,completefunc,omnifunc,path"

" ESlint
let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'javascriptreact': ['eslint', 'prettier'],
\   'typescriptreact': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'css': ['prettier'],
\   'ruby': ['rubocop']
\}
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '*'
let g:ale_fix_on_save = 0

" Switch
" set background=dark
" set background=light

set nocompatible

" git
nnoremap <leader>gs :Gstatus<CR>
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugins')

" ESlint
Plug 'eslint/eslint'

" Ale
Plug 'w0rp/ale'

" Theme:
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'jnurmine/Zenburn'
" Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Plug 'junegunn/seoul256.vim'
" Plug 'sickill/vim-monokai'

" tabnine
" Plug 'codota/tabnine-vim'

" Vim fugitive
Plug 'tpope/vim-fugitive'
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed

" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

" Optional:
Plug 'honza/vim-snippets'
Plug 'grvcoelho/vim-javascript-snippets'

" " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'https://github.com/ivalkeen/nerdtree-execute'
"
" Syntax collection
Plug 'sheerun/vim-polyglot'

" rails vim
Plug 'tpope/vim-rails'

" emmet
Plug 'mattn/emmet-vim'

" Vim surround
Plug 'https://github.com/tpope/vim-surround'

" FzF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Goyo + limelight
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'

" tmuxline
Plug 'edkolev/tmuxline.vim'

" vim eunuch
" add UNIX commands
Plug 'tpope/vim-eunuch'

" vim.repeat
Plug 'tpope/vim-repeat'

" vim esearch
Plug 'eugen0329/vim-esearch'

" vim rspec
Plug 'thoughtbot/vim-rspec'

" bundler
Plug 'tpope/vim-bundler'

" codi
" Plug 'metakirby5/codi.vim'

" scrathpad
Plug 'Konfekt/vim-scratchpad'

" vim-commentary
Plug 'tpope/vim-commentary'

" indentLine
" Plug 'Yggdroot/indentLine'

" autocomplete
Plug 'ackyshake/VimCompletesMe'

" auto-pair
Plug 'jiangmiao/auto-pairs'

" auto save
Plug '907th/vim-auto-save'

" " Initialize plugin system
call plug#end()

" colo seoul256
" let g:seoul256_background = 236
" colorscheme monokai
" colorscheme palenight
" colors ayu
" colorscheme dracula
" colorscheme_bg = "dark"
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" Theme
" Range:   233 (darkest) ~ 239 (lightest)
" Default: 237
" Unified color scheme (default: dark)
" Light color scheme
" colo seoul256-light

" set t_Co=256

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif


" Mapping
nnoremap [ <<
nnoremap ] >>
vnoremap [ <<
vnoremap ] >>

" Zoom

" RSpec
nnoremap <Leader>sp :call RunCurrentSpecFile()<CR>
noremap <Leader>sn :call RunNearestSpec()<CR>
nnoremap <Leader>sl :call RunLastSpec()<CR>
let g:rspec_command = "!bundle exec rspec {spec}"


" Bar
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_b = airline#section#create([])

let g:tmuxline_powerline_separators = 1
let g:tmuxline_preset = 'full'
let g:tmuxline_preset = {
      \'a'    : '#I',
      \'b'    : '',
      \'c'    : '',
      \'win'  : '#{b:pane_current_path}',
      \'cwin' : '#{b:pane_current_path}',
      \'x'    : '%a',
      \'y'    : '%R',
      \'z'    : '#(gitmux -cfg /Users/sepehr/.gitmux.conf #{pane_current_path})'}

" buffer & tab
nnoremap <space><space> :History<CR>

" fzf
set rtp+=/usr/local/opt/fzf
let g:fzf_nvim_statusline = 1
let g:fzf_buffers_jump = 1


nnoremap <leader><leader> :Files<CR>
nnoremap <leader>h :History<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <leader>f :ALEFix<CR>
nnoremap <C-f> :ALEFix<CR>
" nnoremap <Leader>g :Goyo<CR>
" nnoremap <Leader>l :Limelight!!<CR>

nnoremap <C-c> "*y

" IndentLine {{
" let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char = '⎸'
let g:indentLine_first_char = '⎸'
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_setColors = 0
" Autocomplete
" autocmd FileType vim let b:vcm_tab_complete = 'vim'

" AutoSave
let g:auto_save = 1  " enable AutoSave on Vim startup


" fix . to support plugin mappings too
" provided by repeat-vim
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" vim-commentary
" to support extra languages
" autocmd FileType apache setlocal commentstring=#\ %s


" esearch
" " Use regex matching with the smart case mode by default and avoid matching text-objects.

" let g:esearch.regex   = 1
" let g:esearch.textobj = 0
" let g:esearch.case    = 'smart'

" Redefine the default highlights (see :help highlight and :help esearch-appearance)
highlight      esearchHeader     cterm=bold gui=bold ctermfg=white ctermbg=white
highlight link esearchStatistics esearchFilename
highlight link esearchFilename   Label
highlight      esearchMatch      ctermbg=27 ctermfg=15 guibg='#005FFF' guifg='#FFFFFF'

" SnipMate
let g:snipMate = { 'snippet_version' : 1 }
