"dein Scripts-----------------------------

let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif
"nnoremap d "_d

" Required:
if dein#load_state(s:dein_dir)

  let g:dein#cache_directory = $HOME . '/.cache/dein'

  call dein#begin($HOME . '/dotfiles/nvim/dein')

  let s:toml_dir  = $HOME . '/dotfiles/nvim/dein/toml' 
  let s:toml      = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
 
if dein#check_install()
 call dein#install()
endif

"End dein Scripts-------------------------

filetype plugin indent on

set number
set title
set smartindent
set ignorecase
set wrapscan
set cursorline
set expandtab
filetype plugin indent on
set showmatch
set splitbelow "新しいウィンドウを下に開く
colorscheme deus
syntax on
let g:rainbow_active = 1
set noswapfile
set cursorcolumn
set list listchars=tab:\▸\-
set tabstop=2
set shiftwidth=2
let g:deoplete#enable_at_startup = 1
let g:ale_completion_enabled = 1
inoremap <C-e> <Esc>$
inoremap <C-a> <Esc>^
noremap <C-e> <Esc>$
noremap <C-a> <Esc>^
let NERDTreeShowHidden = 1
autocmd VimEnter * execute 'NERDTree'
let g:vim_markdown_folding_disabled = 1
set shell=bash\ -i
let g:quickrun_config={'*': {'split': ''}}
set splitbelow
autocmd VimEnter * NERDTree

nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')
set rtp+=~/.fzf
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1
nnoremap <Space><Space> i<space><esc>
set ttyfast                                      " ターミナル：ターミナル接続を高速にする
set t_Co=256
noremap <Space>y 0v$hy
noremap oo o<esc>
let g:tigris#enabled = 1
let g:tigris#on_the_fly_enabled = 1
let g:tigris#delay = 300
nnoremap x "_x
nnoremap D "_D

