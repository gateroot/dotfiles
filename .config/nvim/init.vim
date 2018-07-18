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
  let s:toml_dir = expand('~/.config/nvim')
  call dein#load_toml(s:toml_dir . '/dein.toml',      {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

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


" Theme
colorscheme kalisi
set background=light
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight ALEWarningSign guifg=#FFFF66
highlight ALEErrorSign guifg=#FF6666
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'


" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif


" Vim Config
set number "行番号表示
set fenc=utf-8 "文字コード設定
set cursorline "行に下線を表示
set hlsearch "検索語をハイライト
set mouse=a "マウス利用可能にする
set clipboard+=unnamed "Yankしたものをクリップボードにも反映する
set splitbelow " Horizontal split below current.
set splitright " Vertical split to right of current.
set tabstop=4 " Render TABs using this many spaces.
set shiftwidth=4 " Indentation amount for < and > commands.
if !&scrolloff
    set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
    set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
let mapleader="\<SPACE>" " Map the leader key to SPACE
set ignorecase " Make searching case insensitive
set smartcase " ... unless the query has capital letters.
set gdefault " Use 'g' flag by default with :s/foo/bar/.
" Map the leader key to SPACE
let mapleader="\<SPACE>"


" [Key Bindings]---------------------------

" semicolon to colon
nnoremap ; :

tnoremap <silent> <ESC> <C-\><C-n>
nnoremap s <Nop>

" Move cursor between multiple windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Visual mode 
nnoremap <S-j> <S-v>j
nnoremap <S-k> <S-v>k
nnoremap <S-l> vl
nnoremap <S-h> vh

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

" EasyMotion
nmap <Leader>f <Plug>(easymotion-s2)
xmap <Leader>f <Plug>(easymotion-s2)

" The NERD Tree
map <silent> <C-n> :NERDTreeToggle<CR>

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

" Neoterm
nnoremap <silent> <Leader>t :Tnew<CR><C-w>ji

" End [Key Bindings]-----------------------


" [Plugin Configs]-------------------------

" Neoterm
let g:neoterm_default_mod='belowright'

" vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" The NERD Tree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Indent Guide
let g:indent_guides_enable_on_vim_startup = 1

" End [Plugin Configs]---------------------
