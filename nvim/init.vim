" ======= Vim-Plug =======
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'

Plug 'tomasr/molokai'
Plug '1995parham/tomorrow-night-vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'blueyed/smarty.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'easymotion/vim-easymotion'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'itchyny/lightline.vim'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'leafgarland/typescript-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdtree'
Plug 'sonjapeterson/1989.vim'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/BlockComment.vim'
Plug 'w0rp/ale'
Plug 'wesq3/vim-windowswap'

call plug#end()

" ========= LITELINE =========
" must be defined before colorschema settings
" display relative path
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightLineFilename'
      \ }
      \ }
function! LightLineFilename()
  return expand('%')
endfunction

" ========= COLOR-SCHEME =========
colorscheme 1989
highlight ExtraWhitespace ctermbg=238

syntax on
syntax enable
filetype plugin indent on

nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" ========= SETTINGS =========
set noshowmode
set number
set relativenumber
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2 smarttab
set expandtab
"set list
"set listchars=tab:>-

set splitright
set splitbelow

" ========= MAPPINGS =========

" enable spell checker
map <F7> :setlocal spell! spelllang=en_us<CR>

" key binding to open nerdTree
map <silent> <C-n> :NERDTreeToggle<CR>

" pretty format json
nmap <silent> <space>pj :%!python -m json.tool

" open current source file
nnoremap <leader>sv :source $MYVIMRC<cr>

" exclude dirs from indexing in ctlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|_site|bower_components|node_modules)$',
  \ }

" ========= COMMANDS  =========

" remove tailing white spaces on save
autocmd BufEnter * EnableStripWhitespaceOnSave
" autocmd BufWritePre * StripWhitespace
