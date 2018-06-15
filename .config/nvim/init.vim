"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/hiroaki/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/hiroaki/.cache/dein')
  call dein#begin('/Users/hiroaki/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/hiroaki/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('jacoborus/tender.vim')
  call dein#add('kassio/neoterm')
  call dein#add('tpope/vim-fugitive')
  call dein#add('vim-airline/vim-airline')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('easymotion/vim-easymotion')
  if has('python3')
    call dein#add('Shougo/denite.nvim')
  endif
  call dein#add('Shougo/unite.vim')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" The NERD Tree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>

"Indent Guide
let g:indent_guides_enable_on_vim_startup = 1

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme tender

" Vim Config
set number "行番号表示
set fenc=utf-8 "文字コード設定
set cursorline "行に下線を表示
set hlsearch "検索語をハイライト
set mouse=a "マウス利用可能にする
set clipboard+=unnamed "Yankしたものをクリップボードにも反映する

" Key Binding
tnoremap <silent> <ESC> <C-\><C-n>
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

" Neoterm
let g:neoterm_default_mod='belowright'

" EasyMotion
nmap s <Plug>(easymotion-s2)
xmap s <Plug>(easymotion-s2)
omap z <Plug>(easymotion-s2)
