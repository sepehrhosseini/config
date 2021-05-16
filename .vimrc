" this file is mapped to ~/.config/nvim/init.vim

let mapleader="\\"
set ignorecase
set smartcase
set tabstop=8     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=4  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs

" General Mapping
imap kk <esc>
imap jj <esc>
nnoremap ,i :source %<CR> :PlugInstall<CR>
nnoremap ,r :source %<CR>

" NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>

" ESlint
let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'css': ['prettier'],
\}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" CtrlP
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_map = '<leader><leader>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'ra'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

set nocompatible

" GIthub Dashboard
let g:github_dashboard = { 'username': 'sepehr-hosseini-vineti', 'password': $VIM_GH_TOKEN }


" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugins')
"
" ESlint
Plug 'eslint/eslint'
Plug 'w0rp/ale'


" Theme
Plug 'drewtempelmeyer/palenight.vim'

" Vim fugitive
Plug 'tpope/vim-fugitive'
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'https://github.com/ivalkeen/nerdtree-execute'
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" Syntax
Plug 'sheerun/vim-polyglot'

" " Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Vim surround
Plug 'https://github.com/tpope/vim-surround'
"
" " Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"
" " Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
"
"
" Bar
"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Goyo + limelight
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'


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

" " Initialize plugin system
call plug#end()

set background=dark
colorscheme palenight

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
noremap zz <c-w>_ \| <c-w>\|
noremap zo <c-w>=

" RSpec
nnoremap <Leader>s :call RunCurrentSpecFile()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
let g:rspec_command = "!bundle exec rspec {spec}"


" Bar
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_b = airline#section#create([])
let g:tmuxline_powerline_separators = 1
"let g:tmuxline_preset = 'full'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '%a',
      \'y'    : '%R',
      \'z'    : '#(gitmux -cfg /Users/sepehr/.gitmux.conf #{pane_current_path})'}

" buffer & tab
nnoremap <space><space> :Buffers<CR>

" fzf
set rtp+=/usr/local/opt/fzf
let g:fzf_nvim_statusline = 0
let g:fzf_buffers_jump = 1


nnoremap <leader><leader> :Files<CR>
nnoremap <Leader>h :History<CR>
nnoremap ,g :Goyo<CR>
nnoremap ,l :Limelight!!<CR>


" fix . to support plugin mappings too
" provided by repeat-vim
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

